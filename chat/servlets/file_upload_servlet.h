#ifndef __CHAT_SERVLETS_FILE_UPLOAD_SERVLET_H__
#define __CHAT_SERVLETS_FILE_UPLOAD_SERVLET_H__

#include "http_servlet.h"

namespace chat {
namespace servlet {

class FileUploadServlet : public sylar::http::HttpServlet {
public:
    typedef std::shared_ptr<FileUploadServlet> ptr;

    /**
     * @brief 构造函数
    */
    FileUploadServlet(const std::string& path);

    /**
     * @brief 处理请求
     * @param[in] req HTTP请求
     * @param[in] res HTTP响应
     * @param[in] session HTTP连接
     * @return 是否处理成功
     */
    virtual int32_t handle(sylar::http::HttpRequest::ptr req, 
                           sylar::http::HttpResponse::ptr res, 
                           sylar::http::HttpSession::ptr session) override;

private:
    std::string m_path;
};

}
}


#endif