#!/bin/bash
# Program:
#	This program can help you auto connect the campus net of SZU when you not in dormitory.
# Author:
# Stoneman sqfstone@163.com
# History:
# 2022/6/2 Stoneman First release
STATE_CODE=$(curl --connect-timeout 5 -i -s https://www.baidu.com | grep HTTP | awk '{print $2}')
if [ "$STATE_CODE" != "200" ]; then
	curl "http://172.30.255.42:801/eportal/portal/login?user_account=校园卡号6位&user_password=密码"
fi
