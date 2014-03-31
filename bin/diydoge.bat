@echo off
setlocal
echo [*] Starting DDD Bootstrap...

REM Need to start fresh because this is also our curl location tester.
REM This will be important when we locally verify md5sums anyway.

del /F pooler-cpuminer-2.3.3-win32.zip

set curl_cmd="curl"

:test_for_curl
echo [*] Checking if curl is already in the path...
REM this may fail, but it's okay.
%curl_cmd% -3sSLO https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/bin/pooler-cpuminer-2.3.3-win32.zip
if not exist "pooler-cpuminer-2.3.3-win32.zip" goto :install_curl
goto :curl_the_things

:install_curl
echo [*] Okay, that didn't work, so installing cURL locally...
if not exist curl-7.35.0-win32-local-fix1.msi goto :missing_curl_installer
curl-7.35.0-win32-local-fix1.msi /quiet /passive
set curl_cmd=%LOCALAPPDATA%\Apps\cURL\bin\curl.exe  
goto :curl_the_things

:curl_the_things
echo [*] Using %curl_cmd% to fetch binaries...
%curl_cmd% -3sSLO "https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/bin/pooler-cpuminer-2.3.3-win32.zip"
%curl_cmd% -3sSLO "https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/conf/p2p.conf"

:unzip_the_things
REM This can get confusing, since x86 indicates we are actually on a 64-bit machine.
REM It'll be important when we actually support the 64-bit CPU miner.
if exist "%ProgramFiles%\7-zip\7z.exe" goto :unzip_cpuminer
if exist "%ProgramFiles(x86)%\7-zip\7z.exe" goto :unzip_cpuminer_64
goto :install_7bit

:install_7bit
echo [*] Fetching 7-Zip...
%curl_cmd% -3sSLO "https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/bin/7z920.msi"
7z920.msi /quiet /passive

if exist "%ProgramFiles%\7-zip\7z.exe" goto :unzip_cpuminer
if exist "%ProgramFiles(x86)%\7-zip\7z.exe" goto :unzip_cpuminer_64
goto :missing_7zip_installer

:unzip_cpuminer
echo [*] Unzipping cpuminer...
"%ProgramFiles%\7-zip\7z.exe" e -y pooler-cpuminer-2.3.3-win32.zip
goto :start_miner

:unzip_cpuminer_64
echo [*] Unzipping cpuminer...
"%ProgramFiles(x86)%\7-zip\7z.exe" e -y pooler-cpuminer-2.3.3-win32.zip
goto :start_miner

:start_miner
echo [*] All right, let's get mining!
minerd -c p2p.conf
goto :end

:missing_curl_installer
echo [*] Missing curl installer. Try getting it yourself, from:
echo [*] https://raw.githubusercontent.com/thegoddambatman/diy-dogecoin-digger/master/bin/curl-7.35.0-win32-local-fix1.msi

:missing_7zip_installer
echo [*] 7-Zip installation failed. Try installing it yourself, from:
echo [*] https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/bin/7z920.msi
goto :end

:end
