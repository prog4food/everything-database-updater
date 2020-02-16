@echo off
REM Everything database background updàter v0.3
REM               github.com/prog4food (c) 2o19

title prog4food Everything Updater v0.3
set EBASE="%~dp0Everything"
echo Update...
"%EBASE%.exe" -instance "reindex" -config "%EBASE%.ini" -db "%EBASE%.db" -update -exit
echo Kill...
"%EBASE%.exe" -exit
echo Startup...
start "Everything background" "%EBASE%.exe" -read-only -db "%EBASE%.db" -startup
echo ok
