#include "my_module.h"
#include "application.h"
#include "http_server.h"
#include "ws_server.h"
#include "resource_servlet.h"
#include "chat_servlet.h"
#include "env.h"

namespace chat {

static sylar::Logger::ptr g_logger = SYLAR_LOG_NAME("system");

MyModule::MyModule() 
    :Module("chat_room", "1.0", "") {
}

bool MyModule::onLoad() {
    SYLAR_LOG_INFO(g_logger) << "onLoad";
    return true;
}

bool MyModule::onUnLoad() {
    SYLAR_LOG_INFO(g_logger) << "onUnLoad";
    return true;
}

// static int32_t handle(sylar::http::HttpRequest::ptr req, 
//                     sylar::http::HttpResponse::ptr res, 
//                     sylar::http::HttpSession::ptr session) {
//     SYLAR_LOG_INFO(g_logger) << "handle";
//     res->setBody("handle");
//     return 0;
// }

bool MyModule::onServerReady() {
    SYLAR_LOG_INFO(g_logger) << "onServerReady";

    std::vector<sylar::TcpServer::ptr> servers;
    if(!sylar::Application::Getinstance()->getServer("http", servers)) {
        SYLAR_LOG_INFO(g_logger) << "no httpServer alive";
        return false;
    }
    
    for(auto& i : servers) {
        auto http_server = std::dynamic_pointer_cast<sylar::http::HttpServer>(i);
        if(!http_server) {
            continue;
        }
        auto sltDisp = http_server->getDispatch();

        sylar::http::ResourceServlet::ptr slt = 
            std::make_shared<sylar::http::ResourceServlet>(sylar::EnvMgr::GetInstance()->getCwd());

        // sltDisp->addGlobServlet("/html/*", handle);
        sltDisp->addGlobServlet("/html/*", slt);
        sltDisp->addGlobServlet("/css/*", slt);
        sltDisp->addGlobServlet("/image/*", slt);
        SYLAR_LOG_INFO(g_logger) << "addServlet";
    }

    servers.clear();
    if(!sylar::Application::Getinstance()->getServer("ws", servers)) {
        SYLAR_LOG_INFO(g_logger) << "no ws alive";
        return false;
    }

    for(auto& i : servers) {
        auto ws_server = std::dynamic_pointer_cast<sylar::http::WSServer>(i);
        if(!ws_server) {
            continue;
        }
        sylar::http::ServletDispatch::ptr sltDisp = ws_server->getDispatch();

        ChatWSServlet::ptr slt = std::make_shared<ChatWSServlet>();
        sltDisp->addServlet("/wwt/chat", slt);
    }

    return true;
}

bool MyModule::onServerUp() {
    SYLAR_LOG_INFO(g_logger) << "onServerUp";
    return true;
}

extern "C" {
    sylar::Module* CreateModule() {
        sylar::Module* m = new chat::MyModule();
        SYLAR_LOG_INFO(g_logger) << "CreateModule:" << m;
        return m;
    }

    void DestoryModule(sylar::Module* m) {
        SYLAR_LOG_INFO(g_logger) << "DestoryModule:" << m;
        delete m;
    }
}

}