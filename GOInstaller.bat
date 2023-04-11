@echo off

echo Installing Go...

REM Downloading the Go installer
curl -L -o go.msi https://dl.google.com/go/go1.16.3.windows-amd64.msi

REM Install Go
msiexec /i go.msi /qn

REM Set up environment variables
setx PATH "%PATH%;C:\Go\bin"
setx GOROOT "C:\Go"
setx GOPATH "%USERPROFILE%\go"

echo Go has been installed and environment variables have been set up.
echo Please the run below that has been installed in your folder.
pause
