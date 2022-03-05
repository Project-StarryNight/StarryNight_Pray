@echo off
::定位当前目录
cd /d %~dp0
echo ################################################
echo ##
echo ##      更新程序 Version: 1.0.0
echo ##      by Hikari_Nova
echo ##      当前路径: %~dp0
echo ##
echo ################################################
echo 即将开始更新...你依然可以关闭此脚本
timeout /t 5
echo 正在跳转至更新包脚本...
"update/pack"
pause