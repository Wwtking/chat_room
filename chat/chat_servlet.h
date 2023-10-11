#ifndef __SYLAR_CHAT_SERVLET_H__
#define __SYLAR_CHAT_SERVLET_H__

#include "ws_servlet.h"
#include "chat_message.h"
#include "singleton.h"

namespace chat {

/**
 * @brief 每个客户端name对应一个服务器的session连接
*/
class UsernameToSession {
public:
    typedef std::shared_ptr<UsernameToSession> ptr;
    typedef sylar::RWMutex MutexType;

    /**
     * @brief 构造函数
    */
    UsernameToSession();

    /**
     * @brief 增加name -- session对
    */
    void addSession(const std::string& name, sylar::http::WSSession::ptr session);

    /**
     * @brief 删除name -- session对
    */
    void delSession(const std::string& name);

    /**
     * @brief 判断用户名name是否有对应的session
    */
    bool hasSession(const std::string& name);

    /**
     * @brief 通知所有的用户，除session对应的用户
     * @details sessions->sendMessage(msg->toString())
     * @param[in] cmsg 要通知的消息
     * @param[in] session 对应的用户不用通知
    */
    void notify(ChatMessage::ptr cmsg, sylar::http::WSSession::ptr session = nullptr);

private:
    /// 读写锁
    MutexType m_mutex;
    /// name -- session对
    std::map<std::string, sylar::http::WSSession::ptr> m_sessions;

};

typedef sylar::Singleton<UsernameToSession> SessionsMgr;

class ChatWSServlet : public sylar::http::WSServlet {
public:
    typedef std::shared_ptr<ChatWSServlet> ptr;

    /**
     * @brief 构造函数
     */
    ChatWSServlet();

    /**
     * @brief 握手建立连接成功的回调函数
     * @param[in] req HTTP请求
     * @param[in] session WebSocket连接
     * @return 是否处理成功
     */
    virtual int32_t onConnect(sylar::http::HttpRequest::ptr req, 
                              sylar::http::WSSession::ptr session) override;

    /**
     * @brief 双向数据传输时的处理回调函数
     * @param[in] req HTTP请求
     * @param[in] msg 接收到的WS消息体封装
     * @param[in] session WebSocket连接
     * @return 是否处理成功
     */
    virtual int32_t handle(sylar::http::HttpRequest::ptr req, 
                           sylar::http::WSFrameMessage::ptr msg,
                           sylar::http::WSSession::ptr session) override;

    /**
     * @brief 挥手关闭连接成功的回调函数
     * @param[in] req HTTP请求
     * @param[in] session WebSocket连接
     * @return 是否处理成功
     */
    virtual int32_t onClose(sylar::http::HttpRequest::ptr req, 
                            sylar::http::WSSession::ptr session) override;

};

} // namespace chat

#endif