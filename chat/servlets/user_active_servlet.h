#ifndef __CHAT_SERVLETS_USER_ACTIVE_SERVLET_H__
#define __CHAT_SERVLETS_USER_ACTIVE_SERVLET_H__

#include "http_servlet.h"
#include "struct.h"

namespace chat {
namespace servlet {

/**
 * @brief 用户激活账号(验证码)
*/
class UserActiveServlet : public chat::BlogServlet {
public:
    typedef std::shared_ptr<UserActiveServlet> ptr;

    /**
     * @brief 构造函数
    */
    UserActiveServlet();

    /**
     * @brief 处理请求
     * @param[in] req HTTP请求
     * @param[in] res HTTP响应
     * @param[in] session HTTP连接
     * @param[in] result 状态码
     * @return 是否处理成功
     */
    virtual int32_t handle(sylar::http::HttpRequest::ptr request
                           ,sylar::http::HttpResponse::ptr response
                           ,sylar::http::HttpSession::ptr session
                           ,Result::ptr result) override;

};


}
}

#endif