@echo off
cls
set ip=google.com
ping -n 1 %ip% | find "TTL"
if not errorlevel 1 set error=win
if errorlevel 1 set error=fail
cls
echo Result: %error%
IF "%error%"=="fail" netsh wlan connect name=BTHub5-8GT2