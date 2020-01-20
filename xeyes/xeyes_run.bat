@echo off
START /b MobaXterm_Portable_v12.4\MobaXterm_Personal_12.4.exe

ECHO;
ECHO Start X11 Client!

ECHO;
ECHO Waiting...15s
ping localhost -w 1000 -n 15 >nul

rem START /b docker run --rm -e DISPLAY=kondou-w10.local:0.0 xeyes
    START /b docker run --rm -e DISPLAY=192.168.200.95:0.0   xeyes

ECHO;
ECHO Waiting...5s
ping localhost -w 1000 -n 5 >nul

ECHO;
ECHO exit

EXIT
