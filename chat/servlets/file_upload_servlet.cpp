#include "file_upload_servlet.h"
#include "log.h"
#include <fstream>

namespace chat {
namespace servlet {

static sylar::Logger::ptr g_logger = SYLAR_LOG_NAME("system");

// 构造函数
FileUploadServlet::FileUploadServlet(const std::string& path) 
    :HttpServlet("FileUploadServlet")
    ,m_path(path) {
}

// 处理请求
int32_t FileUploadServlet::handle(sylar::http::HttpRequest::ptr req, 
                                sylar::http::HttpResponse::ptr res, 
                                sylar::http::HttpSession::ptr session) {
    // 存储上传文件的路径
    std::string path = m_path + "/" + sylar::StringUtil::UrlDecode(req->getHeader("Filename"));
    SYLAR_LOG_INFO(g_logger) << path;
    if(path.find("..") != std::string::npos) {
        res->setBody("invalid path");
        res->setStatus(sylar::http::HttpStatus::NOT_FOUND);
        return -1;
    }

    // 移植文件内容
    auto filedata = req->getBody();
    std::ofstream ofs(path, std::ios::binary);
    ofs.write(filedata.c_str(), filedata.size());
    ofs.close();

    res->setBody("ok");

    return 0;
}


}
}