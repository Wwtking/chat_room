#include "file_query_servlet.h"
#include "log.h"
#include "struct.h"
#include <fstream>

namespace chat {
namespace servlet {

static sylar::Logger::ptr g_logger = SYLAR_LOG_NAME("system");

// 构造函数
FileQueryServlet::FileQueryServlet(const std::string& path) 
    :HttpServlet("FileQueryServlet")
    ,m_path(path) {
}

// 处理请求
int32_t FileQueryServlet::handle(sylar::http::HttpRequest::ptr req, 
                                sylar::http::HttpResponse::ptr res, 
                                sylar::http::HttpSession::ptr session) {
    // 所有可下载文件的路径
    std::string path = m_path;
    SYLAR_LOG_INFO(g_logger) << path;
    if(path.find("..") != std::string::npos) {
        res->setBody("invalid path");
        res->setStatus(sylar::http::HttpStatus::NOT_FOUND);
        return -1;
    }
    std::vector<std::string> files;
    sylar::FilesUtil::ListAllFiles(files, path);

    // 将所有可下载文件的文件名发到前端
    Json::Value v;
    for(auto& i : files) {
        v.append(sylar::StringUtil::UrlDecode(sylar::FilesUtil::Basename(i)));
    }

    res->setBody(sylar::JsonUtil::ToString(v));

    return 0;
}


}
}