@echo off
setlocal

set BASE=D:\dianshangyijiantu
set JAVA_HOME=%BASE%\jdk21
set ANDROID_HOME=%BASE%\android-sdk
set ANDROID_SDK_ROOT=%BASE%\android-sdk
set GRADLE_USER_HOME=%BASE%\.gradle
set PATH=%BASE%\nodejs;%BASE%\jdk21\bin;%BASE%\android-sdk\platform-tools;%PATH%

set GRADLE=%BASE%\.gradle\wrapper\dists\gradle-8.11.1-all\LOCALINSTALL\gradle-8.11.1\bin\gradle.bat
set PROJECT=%BASE%\ecom-ai-app\android
set LOG=%BASE%\build.log
set DONE=%BASE%\build.done

echo BUILD_START > "%LOG%"
echo %TIME% >> "%LOG%"
echo JAVA_HOME=%JAVA_HOME% >> "%LOG%"

call "%GRADLE%" assembleDebug --no-daemon --project-dir "%PROJECT%" >> "%LOG%" 2>&1
echo %ERRORLEVEL% > "%DONE%"
echo %TIME% >> "%LOG%"
echo BUILD_END >> "%LOG%"

endlocal
