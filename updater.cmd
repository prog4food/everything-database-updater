@echo off
title prog4food Everything Updater v0.2
set EBIN="%~dp0Everything.exe"

echo Update...
%EBIN% -instance "reindex" -config "%~dp0Everything.ini" -db "%~dp0Everything.db" -update -exit
echo Kill...
%EBIN% -exit
echo Startup...
start "Everything background" %EBIN% -read-only -db "%~dp0Everything.db" -startup
echo ok
