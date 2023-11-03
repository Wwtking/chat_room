#include "file_download_servlet.h"
#include "log.h"
#include "struct.h"
#include <fstream>

namespace chat {
namespace servlet {

static sylar::Logger::ptr g_logger = SYLAR_LOG_NAME("system");

// 构造函数
FileDownloadServlet::FileDownloadServlet(const std::string& path) 
    :HttpServlet("FileDownloadServlet")
    ,m_path(path) {
}

// 处理请求
int32_t FileDownloadServlet::handle(sylar::http::HttpRequest::ptr req, 
                                sylar::http::HttpResponse::ptr res, 
                                sylar::http::HttpSession::ptr session) {
    std::string path = m_path + "/" + sylar::StringUtil::UrlDecode(sylar::FilesUtil::Basename(req->getPath()));
    SYLAR_LOG_INFO(g_logger) << path;
    if(path.find("..") != std::string::npos) {
        res->setBody("invalid path");
        res->setStatus(sylar::http::HttpStatus::NOT_FOUND);
        return -1;
    }

    std::ifstream ifs(path);
    if(!ifs) {
        res->setBody("invalid file");
        res->setStatus(sylar::http::HttpStatus::NOT_FOUND);
        return -1;
    }

    std::stringstream ss;
    std::string line;
    while(getline(ifs, line)) {
        ss << line << std::endl;
    }

    res->setBody(ss.str());
    res->setHeader("content-type", "application/octet-stream");
    return 0;
}


}
}