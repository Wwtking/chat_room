#include "chat_servlet.h"
#include "log.h"
#include "chat_message.h"
#include "util.h"

namespace chat {

static sylar::Logger::ptr g_logger = SYLAR_LOG_NAME("system");

static int32_t SendMessage(sylar::http::WSSession::ptr session, ChatMessage::ptr cmsg) {
    SYLAR_LOG_INFO(g_logger) << cmsg->toString() << " - " << session;
    return session->sendMessage(cmsg->toString()) > 0 ? 0 : -1;
}

/**
 * @brief 构造函数
*/
UsernameToSession::UsernameToSession() {
}

/**
 * @brief 增加name -- session对
*/
void UsernameToSession::addSession(const std::string& name, sylar::http::WSSession::ptr session) {
    SYLAR_LOG_INFO(g_logger) << "add session name=" << name;
    MutexType::WriteLock lock(m_mutex);
    m_sessions[name] = session;
}

/**
 * @brief 删除name -- session对
*/
void UsernameToSession::delSession(const std::string& name) {
    SYLAR_LOG_INFO(g_logger) << "del session name=" << name;
    MutexType::WriteLock lock(m_mutex);
    m_sessions.erase(name);
}

/**
 * @brief 判断用户名name是否有对应的session
*/
bool UsernameToSession::hasSession(const std::string& name) {
    // SYLAR_LOG_INFO(g_logger) << "session name=" << name << " exists";
    MutexType::ReadLock lock(m_mutex);
    auto it = m_sessions.find(name);
    return it != m_sessions.end();
}

/**
 * @brief 通知所有的用户，除session对应的用户
 * @details sessions->sendMessage(msg->toString())
 * @param[in] cmsg 要通知的消息
 * @param[in] session 对应的用户不用通知
*/
void UsernameToSession::notify(ChatMessage::ptr cmsg, sylar::http::WSSession::ptr session) {
    MutexType::ReadLock lock(m_mutex);
    auto sessions = m_sessions;
    lock.unlock();

    for(auto& i : sessions) {
        if(i.second == session) {
            continue;
        }
        SendMessage(i.second, cmsg);
    }
}


/**
 * @brief 构造函数
 */
ChatWSServlet::ChatWSServlet() 
    :WSServlet("ChatWSServlet") {
}

/**
 * @brief 握手建立连接成功的回调函数
 * @param[in] req HTTP请求
 * @param[in] session WebSocket连接
 * @return 是否处理成功
 */
int32_t ChatWSServlet::onConnect(sylar::http::HttpRequest::ptr req, 
                                sylar::http::WSSession::ptr session) {
    SYLAR_LOG_INFO(g_logger) << "onConnect " << session;
    return 0;
}

/**
 * @brief 挥手关闭连接成功的回调函数
 * @param[in] req HTTP请求
 * @param[in] session WebSocket连接
 * @return 是否处理成功
 */
int32_t ChatWSServlet::onClose(sylar::http::HttpRequest::ptr req, 
                            sylar::http::WSSession::ptr session) {
    SYLAR_LOG_INFO(g_logger) << "onClose " << session;
    auto id = req->getHeader("$id");
    if(!id.empty()) {
        SessionsMgr::GetInstance()->delSession(id);
        ChatMessage::ptr nty(new ChatMessage);
        nty->set("type", "user_leave");
        nty->set("name", id);
        nty->set("time", sylar::TimeToStr());
        SessionsMgr::GetInstance()->notify(nty);
    }
    return 0;
}

/**
 * @brief 双向数据传输时的处理回调函数
 * @param[in] req HTTP请求
 * @param[in] msg 接收到的WS消息体封装
 * @param[in] session WebSocket连接
 * @return 是否处理成功
 */
int32_t ChatWSServlet::handle(sylar::http::HttpRequest::ptr req, 
                            sylar::http::WSFrameMessage::ptr msg,
                            sylar::http::WSSession::ptr session) {
    SYLAR_LOG_INFO(g_logger) << "handle " << session 
                            << " opcode=" << msg->getOpcode()
                            << " data=" << msg->getData();

    auto cmsg = ChatMessage::Create(msg->getData());
    auto id = req->getHeader("$id");
    if(!cmsg) {
        if(!id.empty()) {
            SessionsMgr::GetInstance()->delSession(id);
        }
        return -1;
    }

    ChatMessage::ptr rsp(new ChatMessage);
    std::string type = cmsg->get("type");
    if(type == "login_request") {
        rsp->set("type", "login_response");
        std::string name = cmsg->get("name");
        if(name.empty()) {
            rsp->set("result", "400");
            rsp->set("msg", "name is null");
            return SendMessage(session, rsp);
        }
        if(!id.empty()) {
            rsp->set("result", "401");
            rsp->set("msg", "logined");
            return SendMessage(session, rsp);
        }
        if(SessionsMgr::GetInstance()->hasSession(name)) {
            rsp->set("result", "402");
            rsp->set("msg", "name exists");
            return SendMessage(session, rsp);
        }

        rsp->set("result", "200");
        rsp->set("msg", "ok");
        SessionsMgr::GetInstance()->addSession(name, session);
        req->setHeader("$id", name);

        ChatMessage::ptr nty(new ChatMessage);
        nty->set("type", "user_enter");
        nty->set("name", name);
        nty->set("time", sylar::TimeToStr());
        SessionsMgr::GetInstance()->notify(nty, session);
        return SendMessage(session, rsp);
    }
    else if(type == "send_request") {
        rsp->set("type", "send_response");
        std::string m = cmsg->get("msg");
        if(id.empty()) {
            rsp->set("result", "500");
            rsp->set("msg", "not login");
            return SendMessage(session, rsp);
        }
        if(m.empty()) {
            rsp->set("result", "501");
            rsp->set("msg", "message is null");
            return SendMessage(session, rsp);
        }

        rsp->set("result", "200");
        rsp->set("msg", "ok");

        ChatMessage::ptr nty(new ChatMessage);
        nty->set("type", "msg");
        nty->set("name", id);
        nty->set("time", sylar::TimeToStr());
        nty->set("msg", m);
        SessionsMgr::GetInstance()->notify(nty);
        return SendMessage(session, rsp);
    }

    return 0;
}

}

