@echo off
CD:\
cls

@ECHO OFF

set /P Domainn=Enter Domain Name: %computername%... Digite Enter para continuar
set /P Usern=Enter Username: 
set /P Senhaadm=Senha: 
set userunas=runas/user:%domainn%\%usern\%senhaadm /cmd.exe
