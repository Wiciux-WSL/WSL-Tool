@echo off
title WSL Tool - By Wiciux
chcp 65001 >nul
cd files
color 5
:start
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo [38;2;255;255;0m        ╔═(1) Ubuntu[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠══(2) Debian[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═══(3) Ubuntu-24.04            (5)Github[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╚╦═══(4) Ubuntu-22.04[0m  
echo [38;2;255;255;0m         ║[0m  
set /p input=.%BS% [38;2;255;255;0m       ╚══════[38;2;255;0;0m(Wiciux@WSL)[38;2;255;255;0m/^>[0m  
if /I %input% EQU 1 (
wsl --install -d Ubuntu
)
if /I %input% EQU 2 (
wsl --install -d Debian
)
if /I %input% EQU 3 (
wsl --install -d Ubuntu-24.04
)
if /I %input% EQU 4 (
wsl --install -d Ubuntu-22.04
)
if /I %input% EQU 5 start https://github.com/Wiciux-WSL/ 
cls
goto start

:banner
echo.
echo.
echo                     [38;2;255;0;0m██╗    ██╗███████╗██╗         ████████╗ ██████╗  ██████╗ ██╗     [0m     
echo                     [38;2;255;51;0m██║    ██║██╔════╝██║         ╚══██╔══╝██╔═══██╗██╔═══██╗██║     [0m
echo                     [38;2;255;102;0m██║ █╗ ██║███████╗██║            ██║   ██║   ██║██║   ██║██║[0m 
echo                     [38;2;255;153;0m██║███╗██║╚════██║██║            ██║   ██║   ██║██║   ██║██║     [0m
echo                     [38;2;255;204;0m╚███╔███╔╝███████║███████╗       ██║   ╚██████╔╝╚██████╔╝███████╗[0m
echo                     [38;2;255;255;0m ╚══╝╚══╝ ╚══════╝╚══════╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝[0m
echo.
