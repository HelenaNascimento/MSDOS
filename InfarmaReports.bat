@echo off
CD %CurrentDir%
mode 46,13
cls
:menu
title Infarma Reports
@echo off
cls
@echo.
ECHO -----------------------------------------
ECHO   	  Infarma Reports
ECHO -----------------------------------------
ECHO  	O que deseja fazer
ECHO -----------------------------------------
ECHO  1.Status
ECHO  2.Versao Java
ECHO  3.Verificar Portas Disponiveis 808*
ECHO  4.Instalar Servico Reports / Iniciar
ECHO  5.Executar Reports
ECHO  6.Atualizacao Reports
ECHO  7.Sair
ECHO -----------------------------------------
@echo.

set /P optionnum=Enter command number: 
GOTO option%optionnum%



:option1
@echo off
cls

tasklist | find /i "InfarmaReports.exe" 

	
	if %errorlevel% EQU 0 (
	
	ECHO Ativo  
	
	) else (	
	
	ECHO Desativado
	
	)
	
	pause

GOTO menu


:option2
@echo off
cls

java -version

pause 

GOTO menu

:option3
@echo off
cls

@echo Porta usada:

netstat -ano | findstr 0.0:808* 

@echo Outras portas disponiveis

pause 

GOTO menu

:option4
cls

@echo off
SET CurrentDir="%~dp0"
CD %CurrentDir%
cls
@echo off

echo *Instalacao InfarmaReports*

echo.
echo.

echo *Parando Servico**
pause 
start InfarmaReports.exe stop /f

echo.

echo *Desintalando Servico*
pause 
start InfarmaReports.exe uninstall /f
echo.

echo *Instalando Servico*
pause
start InfarmaReports.exe install /f
echo.

echo *Executando Servico*
pause
start InfarmaReports.exe start /f
echo.
pause

GOTO menu



:option5
@echo off
cls

cd\
cd C:\Infarma\Reports 

ECHO REPORTS EM EXECUCAO 
ECHO Em Arquivo Reports.txt
ECHO Na Pasta do Reports
ECHO Favor Nao Fechar a Janela
ECHO Para Sair do Programa Digite:
Echo Ctrl+C
java -jar infarma-reports.jar > Reports.txt

pause

GOTO menu

:option6

ftp > //jenkins.infarmasistemas.com.br/DMD/1709/Reports/infarma* -accepteula -U 'Suporte' -P 'qV0pb5lm79QSau' -OutFile "C:\Downloads\"

pause

GOTO menu


:option7


@echo off
cls

exit