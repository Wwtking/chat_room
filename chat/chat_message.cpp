#include "chat_message.h"

namespace chat{
    
ChatMessage::ptr ChatMessage::Create(const std::string& json_str) {
    Json::Value json;
    if(!sylar::JsonUtil::FromString(json, json_str)) {
        return nullptr;
    }

    ChatMessage::ptr cmsg = std::make_shared<ChatMessage>();
    // 返回std::vector<std::string>，存放着所有key的字符串
    Json::Value::Members keys = json.getMemberNames();
    for(auto& i : keys) {
        cmsg->m_datas[i] = json[i].asString();  // 转化为字符串形式
    }
    return cmsg;
}

ChatMessage::ChatMessage() {
}

void ChatMessage::set(const std::string& key, const std::string& value) {
    m_datas[key] = value;
}

std::string ChatMessage::get(const std::string& key) {
    auto it = m_datas.find(key);
    if(it == m_datas.end()) {
        return "";
    }
    return it->second;
}

std::string ChatMessage::toString() const {
    Json::Value json;
    for(auto& i : m_datas) {
        json[i.first] = i.second;
    }
    return sylar::JsonUtil::ToString(json);
}

} // namespace chat
