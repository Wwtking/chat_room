#!/bin/sh

# 检查 bin 目录是否存在
if [ ! -d bin ]
then
    mkdir bin
fi

# 检查 bin/module 目录是否存在
if [ ! -d bin/module ]
then
    mkdir bin/module
else
    # unlink 用于删除指定目录下的文件或符号链接
    unlink bin/chat_room
    unlink bin/module/libchat_room.so
fi

# 将 sylar 生成的可执行文件移过去
cp WebServer/bin/sylar bin/chat_room
# 将 sylar 生成的的动态库.so移过去
cp lib/libchat_room.so bin/module/


# 检查 /tmp/test.sock 目录是否存在，若存在则先删除
if [ ! -d /tmp/test.sock ]
then
    rm -rf /tmp/test.sock
fi