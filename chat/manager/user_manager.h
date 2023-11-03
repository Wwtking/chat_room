#ifndef __CHAT_USER_MANAGER_H__
#define __CHAT_USER_MANAGER_H__

#include "user_info.h"
#include "thread.h"
#include "singleton.h"
#include <unordered_map>

namespace chat {
    
class UserManager {
public:
    typedef sylar::RWMutex MutexType;

    /**
     * @brief 将数据库所有用户数据加载到本类中，用类成员变量存放用户数据
    */
    bool loadAll();

    /**
     * @brief 添加用户数据
    */
    void add(chat::data::UserInfo::ptr info);

    /**
     * @brief 删除用户数据
     * @details 根据不同类型删除数据
     * @param[in] id 主键id
     * @param[in] account 用户账号
     * @param[in] Email 用户邮箱
     * @param[in] Name 用户名
    */
    void del(int64_t id);
    void delByAccount(std::string v);
    void delByEmail(std::string v);
    void delByName(std::string v);

    /**
     * @brief 获取用户数据
     * @details 根据不同类型获取数据
     * @param[in] id 主键id
     * @param[in] account 用户账号
     * @param[in] Email 用户邮箱
     * @param[in] Name 用户名
    */
    chat::data::UserInfo::ptr get(int64_t id);
    chat::data::UserInfo::ptr getByAccount(std::string v);
    chat::data::UserInfo::ptr getByEmail(std::string v);
    chat::data::UserInfo::ptr getByName(std::string v);

    static std::string GetToken(data::UserInfo::ptr info, int64_t ts);

    std::string statusString();

    std::unordered_map<int64_t, chat::data::UserInfo::ptr> getDatas() const { return m_datas; }

private:
    /// 读写锁
    MutexType m_mutex;
    /// id -- UserInfo
    std::unordered_map<int64_t, chat::data::UserInfo::ptr> m_datas;
    /// account -- UserInfo   
    std::unordered_map<std::string, chat::data::UserInfo::ptr> m_accounts;
    /// email -- UserInfo   
    std::unordered_map<std::string, chat::data::UserInfo::ptr> m_emails;
    /// name -- UserInfo  
    std::unordered_map<std::string, chat::data::UserInfo::ptr> m_names;
};

typedef sylar::Singleton<UserManager> UserMgr;

} // namespace chat


#endif