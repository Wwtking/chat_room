#include "http.h"
#include "log.h"
#include "util.h"
#include <sstream>


namespace sylar {
namespace http {

static Logger::ptr g_logger = SYLAR_LOG_NAME("system");

// 将字符串方法名转成HTTP方法类枚举
HttpMethod StringToHttpMethod(const std::string& s) {
    /**
     * @brief int strcmp(const char *s1, const char *s2);
     * @details 用于比较两个字符串是否相等
     * @return 如果s1和s2相等，返回值为0。
     *         如果s1大于s2（按字典顺序），返回值大于0。
     *         如果s1小于s2（按字典顺序），返回值小于0。
    */
    /**
     * @brief int strncmp(const char *s1, const char *s2, size_t n);
     * @details 用于比较两个字符串的前n个字符是否相等
     * @return 如果s1和s2相等，返回值为0。
     *         如果s1大于s2（按字典顺序），返回值大于0。
     *         如果s1小于s2（按字典顺序），返回值小于0。
    */
#define XX(code, name, string) \
    if(strncmp(#name, s.c_str(), strlen(#name)) == 0) { \
        return HttpMethod::name; \
    }

    HTTP_METHOD_MAP(XX);
#undef XX
    return HttpMethod::INVALID_METHOD;
}

// 将字符串方法名转成HTTP方法类枚举
HttpMethod CharToHttpMethod(const char* ch) {
#define XX(code, name, string) \
    if(strncmp(#name, ch, strlen(#name)) == 0) { \
        return HttpMethod::name; \
    }

    HTTP_METHOD_MAP(XX);
#undef XX
    return HttpMethod::INVALID_METHOD;
}

// HttpMethod枚举是从0开始顺序递增的，提前存储下来，用空间换时间
static const char* MethodString[] = {
#define XX(code, name, string) \
    #string,

    HTTP_METHOD_MAP(XX)
#undef XX
    "INVALID_METHOD"
};
// 将HTTP方法类枚举转换成字符串
const char* HttpMethodToString(HttpMethod m) {
    uint32_t index = (uint32_t)m;
    if(index >= sizeof(MethodString) / sizeof(MethodString[0])) {
        return "INVALID_METHOD";
    }
    return MethodString[index];
}

// 将HTTP状态类枚举转换成字符串
const char* HttpStatusToString(HttpStatus s) {
    switch((uint32_t)s) {
#define XX(code, name, string) \
        case code: \
            return #string;

        HTTP_STATUS_MAP(XX)
#undef XX
        default:
            return "INVALID_STATUS";
    }
}

// 忽略大小写的比较仿函数
bool CompareFunctor::operator()(const std::string& left, const std::string& right) const {
    /**
     * @brief int strcasecmp(const char *s1, const char *s2);
     * @details 用于比较两个字符串是否相等，而不考虑它们的大小写
     * @return 如果s1和s2相等（忽略大小写），返回值为0
     *         如果s1大于s2（按字典顺序），返回值大于0
     *         如果s1小于s2（按字典顺序），返回值小于0
    */
    return strcasecmp(left.c_str(), right.c_str()) < 0;
}

// 有参构造
HttpRequest::HttpRequest(uint8_t version, bool close) 
    :m_method(HttpMethod::GET)
    ,m_version(version)
    ,m_websocket(false)
    ,m_close(close)
    ,m_path("/")
    ,m_parserParamFlag(0) {
}

// 根据key值获取HTTP请求头部的value值
const std::string& HttpRequest::getHeader(const std::string& key, const std::string& def) {
    auto it = m_headers.find(key);
    if(it == m_headers.end()) {
        return def;
    }
    return it->second;
}

// 根据key值获取HTTP请求参数的value值
const std::string& HttpRequest::getParam(const std::string& key, const std::string& def) {
    initQueryParam();
    initBodyParam();
    auto it = m_params.find(key);
    if(it == m_params.end()) {
        return def;
    }
    return it->second;
}

// 根据key值获取HTTP请求Cookie的value值
const std::string& HttpRequest::getCookie(const std::string& key, const std::string& def) {
    initCookies();
    auto it = m_cookies.find(key);
    if(it == m_cookies.end()) {
        return def;
    }
    return it->second;
}

// 根据key值设置HTTP请求头部的value值
void HttpRequest::setHeader(const std::string& key, const std::string& value) {
    m_headers[key] = value;
}

// 根据key值设置HTTP请求参数的value值
void HttpRequest::setParam(const std::string& key, const std::string& value) {
    m_params[key] = value;
}

// 根据key值设置HTTP请求Cookie的value值
void HttpRequest::setCookie(const std::string& key, const std::string& value) {
    m_cookies[key] = value;
}

// 根据key值删除HTTP请求头部的value值
void HttpRequest::delHeader(const std::string& key) {
    m_headers.erase(key);
}

// 根据key值删除HTTP请求参数的value值
void HttpRequest::delParam(const std::string& key) {
    m_params.erase(key);
}

// 根据key值删除HTTP请求Cookie的value值
void HttpRequest::delCookie(const std::string& key) {
    m_cookies.erase(key);
}   

// 判断HTTP请求的头部参数是否存在
bool HttpRequest::hasHeader(const std::string& key, std::string* value) {
    auto it = m_headers.find(key);
    if(it == m_headers.end()) {
        return false;
    }
    if(value) {
        *value = it->second;
    }
    return true;
}

// 判断HTTP请求的请求参数是否存在
bool HttpRequest::hasParam(const std::string& key, std::string* value) {
    initQueryParam();
    initBodyParam();
    auto it = m_params.find(key);
    if(it == m_params.end()) {
        return false;
    }
    if(value) {
        *value = it->second;
    }
    return true;
}

// 判断HTTP请求的Cookie参数是否存在
bool HttpRequest::hasCookie(const std::string& key, std::string* value) {
    initCookies();
    auto it = m_cookies.find(key);
    if(it == m_cookies.end()) {
        return false;
    }
    if(value) {
        *value = it->second;
    }
    return true;
}

// 可读性输出HTTP请求所有信息
std::ostream& HttpRequest::dump(std::ostream& os) const {
    os << HttpMethodToString(m_method) << " "
        << m_path 
        << (m_query.empty() ? "" : ("?" + m_query))
        << (m_fragment.empty() ? "" : ("#" + m_fragment)) 
        << " HTTP/"
        << (m_version >> 4)  //需不需要转换为uint32_t
        << "."
        << (m_version & 0x0F)
        << "\r\n";

    if(!m_websocket) {
        os << "Connection: " << (m_close ? "Close" : "Keep-Alive") << "\r\n";
    }
    for(const auto& i : m_headers) {
        if(!m_websocket && strcasecmp(i.first.c_str(), "Connection") == 0) {
            continue;
        }
        if(strcasecmp(i.first.c_str(), "Content-Length") == 0) {
            continue;
        }
        os << i.first << ": " << i.second << "\r\n";
    }
    if(!m_body.empty()) {
        os << "Content-Length: " << m_body.size() << "\r\n\r\n";
        os << m_body;
    }
    else {
        os << "\r\n";
    }
    return os;
}

// 字符串方式输出HTTP请求所有信息
std::string HttpRequest::toString() const {
    std::stringstream ss;
    dump(ss);
    return ss.str();
}

void HttpRequest::initParam() {
    initQueryParam();
    initBodyParam();
    initCookies();
}

// 为了解析HTTP请求中的cookie、param各项
// Cookie: name=hani; site=www.hani.com
#define PARSE_PARAM(str, m, flag, trim) \
    size_t pos = 0; \
    do { \
        size_t last = pos; \
        pos = str.find('=', pos); \
        if(pos == std::string::npos) { \
            break; \
        } \
        size_t key = pos; \
        pos = str.find(flag, pos); \
        m.insert(std::make_pair(trim(str.substr(last, key - last)), \
                    sylar::StringUtil::UrlDecode(str.substr(key + 1, pos - key - 1)))); \
        if(pos == std::string::npos) { \
            break; \
        } \
        ++pos; \
    } while(true);

// 解析 m_query 中的请求参数
// GET 请求通常将参数直接放在 URL 的查询字符串中
void HttpRequest::initQueryParam() {
    if(m_parserParamFlag & 0x1) {
        return;
    }

    PARSE_PARAM(m_query, m_params, '&',);
    m_parserParamFlag |= 0x1;
}

// 当使用 content-type: application/x-www-form-urlencoded 编码时，
// 请求参数会被转换成键值对的形式，并通过 & 符号连接起来，然后放在请求体中
// Content-Type: application/x-www-form-urlencoded
// /r/n
// param1=value1&param2=value2
void HttpRequest::initBodyParam() {
    if(m_parserParamFlag & 0x2) {
        return;
    }
    std::string content_type = getHeader("content-type");
    // 在字符串content_type中找子串"application/x-www-form-urlencoded"
    if(strcasestr(content_type.c_str(), "application/x-www-form-urlencoded") == nullptr) {
        m_parserParamFlag |= 0x2;
        return;
    }
    PARSE_PARAM(m_body, m_params, '&',);
    m_parserParamFlag |= 0x2;
}

// Cookie: name=hani; site=www.hani.com
void HttpRequest::initCookies() {
    if(m_parserParamFlag & 0x4) {
        return;
    }
    std::string cookie = getHeader("cookie");
    if(cookie.empty()) {
        m_parserParamFlag |= 0x4;
        return;
    }
    PARSE_PARAM(cookie, m_cookies, ';', sylar::StringUtil::Trim);
    m_parserParamFlag |= 0x4;
}

#undef PARSE_PARAM


// 有参构造
HttpResponse::HttpResponse(uint8_t version, bool close) 
    :m_status(HttpStatus::OK)
    ,m_version(version)
    ,m_websocket(false)
    ,m_close(close) {
}

// 根据key值获取HTTP响应头部的value值
const std::string& HttpResponse::getHeader(const std::string& key, const std::string& def) const {
    auto it = m_headers.find(key);
    if(it == m_headers.end()) {
        return def;
    }
    return it->second;
}

// 根据key值设置HTTP响应头部的value值
void HttpResponse::setHeader(const std::string& key, const std::string& value) {
    m_headers[key] = value;
}

// 根据key值删除HTTP响应头部的value值
void HttpResponse::delHeader(const std::string& key) {
    m_headers.erase(key);
}

// 判断HTTP响应的头部参数是否存在
bool HttpResponse::hasHeader(const std::string& key, std::string* value) const {
    auto it = m_headers.find(key);
    if(it == m_headers.end()) {
        return false;
    }
    if(value) {
        *value = it->second;
    }
    return true;
}

// 可读性输出HTTP请求所有信息
std::ostream& HttpResponse::dump(std::ostream& os) {
    os << "HTTP/" 
        << (m_version >> 4) 
        << "." 
        << (m_version & 0x0F) 
        << " " 
        << (uint32_t)m_status 
        << " " 
        << m_reason << "\r\n";

    if(!m_websocket) {
        os << "Connection: " << (m_close ? "Close" : "Keep-Alive") << "\r\n";
    }
    bool hasContentLen = false;
    for(const auto& i : m_headers) {
        if(!m_websocket && strcasecmp(i.first.c_str(), "Connection") == 0) {
            continue;
        }
        if(!hasContentLen && strcasecmp(i.first.c_str(), "Content-Length") == 0) {
            hasContentLen = true;
        }
        os << i.first << ": " << i.second << "\r\n";
    }
    for(auto& i : m_cookies) {
        os << "Set-Cookie: " << i << "\r\n";
    }
    if(!m_body.empty()) {
        if(!hasContentLen) {
            os << "Content-Length: " << m_body.size() << "\r\n";
        }
        os << "\r\n" << m_body;
    }
    else {
        os << "\r\n";
    }
    return os;
}

// 字符串方式输出HTTP请求所有信息
std::string HttpResponse::toString() {
    std::stringstream ss;
    dump(ss);
    return ss.str();
}

// 设置 HTTP 响应中的 Cookie
void HttpResponse::setCookie(const std::string& key, const std::string& val,
                             time_t expired, const std::string& path,
                             const std::string& domain, bool secure) {
    std::stringstream ss;
    ss << key << "=" << val;
    if(expired > 0) {
        ss << ";expires=" << sylar::TimeToStr(expired, "%a, %d %b %Y %H:%M:%S") << " GMT";
    }
    if(!domain.empty()) {
        ss << ";domain=" << domain;
    }
    if(!path.empty()) {
        ss << ";path=" << path;
    }
    if(secure) {
        ss << ";secure";
    }
    m_cookies.push_back(ss.str());
}

}
}