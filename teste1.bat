http://www.baboo.com.br/tutorial/tutorial-de-windows/tutorial-windows-8-1-tutorial-windows-8/como-ativar-ou-desativar-a-conta-administrador-no-windows-8/

"Aquele que não compartilha seu conhecimento, deixa morrer consigo os frutos de sua sabedoria". (Hélcio Macedo)


:menu
@echo off
cls

@echo.
ECHO ---------------------------
ECHO Instalacao impressora
ECHO ---------------------------
ECHO  O que deseja fazer
ECHO  ---------------------------
ECHO  1.Reiniciar o spooler
ECHO  2.Reiniciar a Maquina
ECHO  3.Instalar impressora
ECHO  4.Sair
ECHO  ---------------------------
@echo.

set /P optionnum=Enter command number: 
GOTO option%optionnum%

:option1

@echo off
cls

NET STOP SPOOLER

NET START SPOOLER

pause

GOTO menu

:option2
 
SHUTDOWN -R

:option3

:optionmenu2

@echo off
cls

@echo.
@echo ---------------------------------
@echo Qual impressora deseja instalar
@echo ---------------------------------
@echo 1.Andar 8
@echo 2.Andar 10
@echo 3.Menu Anterior
@echo.
set /P optionnum=Enter command number: 
GOTO optionimp%optionnum%

PAUSE

:optionimp1

:optionmenu3

@echo off
cls

@echo.
@echo 1.PRTADMMKT1
@echo 2.PRTADMMKT2
@echo 3.PRTADMOP1
@echo 4.PRTADMOP2
@echo 5.PRTADMTI1
@echo 6.Menu Anterior
@echo.
set /P optionnum=Enter command number: 
GOTO optionprint%optionnum%

PAUSE 

:optionimp2

:optionmenu4

@echo off
cls

@echo.
@echo 1.PRT10ADMDIR2
@echo 2.PRT10ADMDIR3
@echo 3.PRT10ADMJUR1
@echo 4.PRT10ADMRH1
@echo 5.PRT10ADMRH2
@echo 6.PRT10ADMRH3
@echo 7.PRT10ADMMEA
@echo 8.PRT10ADMPRES1
@echo 9.PRTADMDIR1
@echo 10.Menu Anterior
@echo.

set /P optionnum=Enter command number: 
GOTO optionpimp%optionnum%

PAUSE

:optionimp3

GOTO menu

:option4
 exit 	
 
:optionprint1

rundll32 printui.dll,PrintUIEntry /in /n\\172.27.1.49\PRTADMMKT1 
GOTO menu

:optionprint2

rundll32 printui.dll,PrintUIEntry /in /n\\172.27.1.49\PRTADMMKT2 
GOTO menu

:optionprint3

rundll32 printui.dll,PrintUIEntry /in /n\\172.27.1.49\PRTADMOP1 
GOTO menu

:optionprint4

rundll32 printui.dll,PrintUIEntry /in /n\\172.27.1.49\PRTADMOP2 
 GOTO menu
 
:optionprint5

rundll32 printui.dll,PrintUIEntry /in /n\\172.27.1.49\PRTADMTI1 
GOTO menu

:optionprint6

GOTO :optionmenu2


:optionpimp1

rundll32 printui.dll,PrintUIEntry /in /n\\172.27.1.49\PRT10ADMDIR2 
GOTO menu

:optionpimp2

rundll32 printui.dll,PrintUIEntry /in /n\\172.27.1.49\PRT10ADMDIR3 
GOTO menu

:optionpimp3

rundll32 printui.dll,PrintUIEntry /in /n\\172.27.1.49\PRT10ADMJUR1 
GOTO menu

:optionpimp4

rundll32 printui.dll,PrintUIEntry /in /n\\172.27.1.49\PRT10ADMRH1 
GOTO menu

:optionpimp5

rundll32 printui.dll,PrintUIEntry /in /n\\172.27.1.49\PRT10ADMRH2 
GOTO menu

:optionpimp6

rundll32 printui.dll,PrintUIEntry /in /n\\172.27.1.49\PRT10ADMRH3 
GOTO menu

:optionpimp7

rundll32 printui.dll,PrintUIEntry /in /n\\172.27.1.49\PRT10ADMMEA 
GOTO menu

:optionpimp8

rundll32 printui.dll,PrintUIEntry /in /n\\172.27.1.49\PRT10ADMPRES1 
GOTO menu

:optionpimp9

rundll32 printui.dll,PrintUIEntry /in /n\\172.27.1.49\PRTADMDIR1 
GOTO menu

:optionpimp10

GOTO optionmenu2