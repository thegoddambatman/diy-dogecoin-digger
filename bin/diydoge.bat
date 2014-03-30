@echo off
setlocal

set curl_cmd="curl"

:test_for_curl
%curl_cmd% -3sSLO https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/bin/pooler-cpuminer-2.3.3-win32.zip
if not exist "pooler-cpuminer-2.3.3-win32.zip" goto :missing_curl_in_path
goto :curl_the_things

:missing_curl_in_path
set curl_cmd=%LOCALAPPDATA%\Apps\cURL\bin\curl.exe  
%curl_cmd% -3sSLO https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/bin/pooler-cpuminer-2.3.3-win32.zip
if not exist "pooler-cpuminer-2.3.3-win32.zip" goto :install_curl
goto :curl_the_things

:install_curl
echo [*] Installing cURL locally...
if not exist curl-7.35.0-win32-local-fix1.msi goto :missing_curl_installer
curl-7.35.0-win32-local-fix1.msi /quiet /passive
goto :curl_the_things

:curl_the_things
echo [*] Using %curl_cmd% to fetch binaries...
%curl_cmd% -3sSLO "https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/bin/pooler-cpuminer-2.3.3-win32.zip"
%curl_cmd% -3sSLO "https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/conf/p2p.conf"

REM Even though we test for 64-bit, it just matters for file installation.
REM We're not actually using 64-bit for anything in this version. TODO.

if exist "%ProgramFiles(x86)%" goto :64bit
echo [*] 32-bit system detected...
if exist "%ProgramFiles%\7-zip\7z.exe" goto :unzip_cpuminer
echo [*] Installing 7-Bit....

%curl_cmd% -3sSLO "https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/bin/7z920.msi"
7z920.msi /quiet /passive

:unzip_cpuminer
echo [*] Unzipping cpuminer...
"%ProgramFiles%\7-zip\7z.exe" e -y pooler-cpuminer-2.3.3-win32.zip
goto :startminer

:64bit

echo [*] 64-bit detected...


:test_for_7z_64
if exist "%ProgramFiles%\7-zip\7z.exe" goto :unzip_cpuminer_64
if exist "%ProgramFiles(x86)%\7-zip\7z.exe" goto :unzip_cpuminer_64

echo [*] Installing 7-Bit....
%curl_cmd% -3sSLO "https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/bin/7z920.msi"
7z920.msi /quiet /passive

:unzip_cpuminer_64
echo [*] Unzipping cpuminer...
"%ProgramFiles(x86)%\7-zip\7z.exe" e -y pooler-cpuminer-2.3.3-win32.zip

:startminer
echo [*] All right, let's get mining!
minerd -c p2p.conf
goto :end

:missing_curl_installer
echo [*] Missing curl installer. Did you download it?
echo [*] https://raw.githubusercontent.com/thegoddambatman/diy-dogecoin-digger/master/bin/curl-7.35.0-win32-local-fix1.msi
:end
