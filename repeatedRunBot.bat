@echo off
:loop
echo Bot

echo 尝试关闭bot进程...
taskkill /FI "WINDOWTITLE eq bot*" /T /F >nul 2>&1

echo 正在启动run_bot.bat...
start "bot" run_bot.bat

echo 等待30分钟...
timeout /t 1800 /nobreak >nul
goto loop