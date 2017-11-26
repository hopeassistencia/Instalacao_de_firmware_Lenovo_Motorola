@ECHO off
if not "%1" == "max" start /MAX cmd /c %0 max & exit/
:start
CLS
ECHO Welcome, %USERNAME%!
echo.
echo Selecione abaixo o modelo do aparelho Motorola:
echo.
echo 1. MOTO E1 - XT1022
echo 2. MOTO E1 - XT1025
echo 3. MOTO G1 - XT1033
echo 4. MOTO G2 - XT1068
echo 5. MOTO G2 - XT1069
echo 6. MOTO G3 - XT1543
echo 7. SAIR DESTE APLICATIVO

set /p choice="Digite sua escolha: "
if "%choice%"=="1" goto submenu_1
if "%choice%"=="2" goto submenu_2
if "%choice%"=="3" goto submenu_3
if "%choice%"=="4" goto submenu_4
if "%choice%"=="5" goto submenu_5
if "%choice%"=="6" goto submenu_6
if "%choice%"=="7" goto bail

:submenu_1
echo.
ECHO MENU MOTO E1 - XT1022
echo.
ECHO 1 - VERIFICAR CONEXAO ADB
ECHO 2 - VERIFICAR CONEXAO FASTBOOT
ECHO 3 - REINICIAR NO MODO BOOTLOADER
ECHO 4 - REINICIAR NO MODO FASTBOOT
ECHO 5 - DESBLOQUEAR BOOTLOADER - PASSO 1
ECHO 6 - DESBLOQUEAR BOOTLOADER - PASSO 2
ECHO 7 - DESBLOQUEAR BOOTLOADER - PASSO 3
ECHO 8 - INSTALAR PARTITION GPT.BIN
ECHO 9 - INSTALAR MOTOBOOT.IMG
ECHO 10 - INSTALAR BOOT.IMG
ECHO 11 - INSTALAR RECOVERY.IMG
ECHO 12 - INSTALAR LOGO.BIN
ECHO 13 - INSTALAR SYSTEM.IMG.SPARSECHUNK.0
ECHO 14 - INSTALAR SYSTEM.IMG.SPARSECHUNK.1
ECHO 15 - INSTALAR SYSTEM.IMG.SPARSECHUNK.2
ECHO 16 - INSTALAR SYSTEM.IMG.SPARSECHUNK.3
ECHO 17 - INSTALAR NON-HLOS.BIN
ECHO 18 - APAGAR MODEMST1
ECHO 19 - APAGAR MODEMST2
ECHO 20 - INSTALAR FSG.MBN
ECHO 21 - APAGAR CACHE
ECHO 22 - APAGAR DADOS DE USUARIO
ECHO 23 - REINCIAR NORMALMENTE
ECHO 24 - VOLTAR AO MENU PRINCIPAL
ECHO.

SET /P M=DIGITE SUA ESCOLHA E PRESSIONE ENTER:

IF %M%==1 adb devices
IF %M%==2 mfastboot devices
IF %M%==3 mfastboot reboot-bootloader
IF %M%==4 adb reboot bootloader
IF %M%==5 mfastboot oem get_unlock_data
IF %M%==6 echo Copie todo o codigo gerado, escolha a opcao 7 e siga os procedimentos do site.
IF %M%==7 start https://motorola-global-portal-pt.custhelp.com/app/standalone/bootloader/unlock-your-device-a
IF %M%==8 mfastboot flash partition gpt.bin
IF %M%==9 mfastboot flash motoboot motoboot.img
IF %M%==10 mfastboot flash boot boot.img
IF %M%==11 mfastboot flash recovery recovery.img
IF %M%==12 mfastboot flash logo logo.bin
IF %M%==13 mfastboot flash system system.img_sparsechunk.0
IF %M%==14 mfastboot flash system system.img_sparsechunk.1
IF %M%==15 mfastboot flash system system.img_sparsechunk.2
IF %M%==16 mfastboot flash system system.img_sparsechunk.3
IF %M%==17 mfastboot flash modem NON-HLOS.bin
IF %M%==18 mfastboot erase modemst1
IF %M%==19 mfastboot erase modemst2
IF %M%==20 mfastboot flash fsg fsg.mbn
IF %M%==21 mfastboot erase cache
IF %M%==22 mfastboot erase userdata
IF %M%==23 mfastboot reboot
IF %M%==24 goto start
goto submenu_1


:submenu_2
echo.
ECHO MENU MOTO E1 - XT1025
echo.
ECHO 1 - VERIFICAR CONEXAO ADB
ECHO 2 - VERIFICAR CONEXAO FASTBOOT
ECHO 3 - REINICIAR NO MODO BOOTLOADER
ECHO 4 - REINICIAR NO MODO FASTBOOT
ECHO 5 - DESBLOQUEAR BOOTLOADER - PASSO 1
ECHO 6 - DESBLOQUEAR BOOTLOADER - PASSO 2
ECHO 7 - DESBLOQUEAR BOOTLOADER - PASSO 3
ECHO 8 - INSTALAR PARTITION GPT.BIN
ECHO 9 - INSTALAR MOTOBOOT.IMG
ECHO 10 - INSTALAR BOOT.IMG
ECHO 11 - INSTALAR RECOVERY.IMG
ECHO 12 - INSTALAR LOGO.BIN
ECHO 13 - INSTALAR SYSTEM.IMG.SPARSECHUNK.0
ECHO 14 - INSTALAR SYSTEM.IMG.SPARSECHUNK.1
ECHO 15 - INSTALAR SYSTEM.IMG.SPARSECHUNK.2
ECHO 16 - INSTALAR SYSTEM.IMG.SPARSECHUNK.3
ECHO 17 - INSTALAR NON-HLOS.BIN
ECHO 18 - APAGAR MODEMST1
ECHO 19 - APAGAR MODEMST2
ECHO 20 - INSTALAR FSG.MBN
ECHO 21 - APAGAR CACHE
ECHO 22 - APAGAR DADOS DE USUARIO
ECHO 23 - REINCIAR NORMALMENTE
ECHO 24 - VOLTAR AO MENU PRINCIPAL
ECHO.

SET /P M=DIGITE SUA ESCOLHA E PRESSIONE ENTER:

IF %M%==1 adb devices
IF %M%==2 mfastboot devices
IF %M%==3 mfastboot reboot-bootloader
IF %M%==4 adb reboot bootloader
IF %M%==5 mfastboot oem get_unlock_data
IF %M%==6 echo Copie todo o codigo gerado, escolha a opcao 7 e siga os procedimentos do site.
IF %M%==7 start https://motorola-global-portal-pt.custhelp.com/app/standalone/bootloader/unlock-your-device-a
IF %M%==8 mfastboot flash partition gpt.bin
IF %M%==9 mfastboot flash motoboot motoboot.img
IF %M%==10 mfastboot flash boot boot.img
IF %M%==11 mfastboot flash recovery recovery.img
IF %M%==12 mfastboot flash logo logo.bin
IF %M%==13 mfastboot flash system system.img_sparsechunk.0
IF %M%==14 mfastboot flash system system.img_sparsechunk.1
IF %M%==15 mfastboot flash system system.img_sparsechunk.2
IF %M%==16 mfastboot flash system system.img_sparsechunk.3
IF %M%==17 mfastboot flash modem NON-HLOS.bin
IF %M%==18 mfastboot erase modemst1
IF %M%==19 mfastboot erase modemst2
IF %M%==20 mfastboot flash fsg fsg.mbn
IF %M%==21 mfastboot erase cache
IF %M%==22 mfastboot erase userdata
IF %M%==23 mfastboot reboot
IF %M%==24 goto start
goto submenu_2


:submenu_3
echo.
ECHO MENU MOTO G1 - XT1033
echo.
ECHO 1 - VERIFICAR CONEXAO ADB
ECHO 2 - VERIFICAR CONEXAO FASTBOOT
ECHO 3 - REINICIAR NO MODO BOOTLOADER
ECHO 4 - REINICIAR NO MODO FASTBOOT
ECHO 5 - DESBLOQUEAR BOOTLOADER - PASSO 1
ECHO 6 - DESBLOQUEAR BOOTLOADER - PASSO 2
ECHO 7 - DESBLOQUEAR BOOTLOADER - PASSO 3
ECHO 8 - INSTALAR PARTITION GPT.BIN
ECHO 9 - INSTALAR MOTOBOOT.IMG
ECHO 10 - INSTALAR BOOT.IMG
ECHO 11 - INSTALAR RECOVERY.IMG
ECHO 12 - INSTALAR LOGO.BIN
ECHO 13 - INSTALAR SYSTEM.IMG.SPARSECHUNK.0
ECHO 14 - INSTALAR SYSTEM.IMG.SPARSECHUNK.1
ECHO 15 - INSTALAR SYSTEM.IMG.SPARSECHUNK.2
ECHO 16 - INSTALAR SYSTEM.IMG.SPARSECHUNK.3
ECHO 17 - INSTALAR NON-HLOS.BIN
ECHO 18 - APAGAR MODEMST1
ECHO 19 - APAGAR MODEMST2
ECHO 20 - INSTALAR FSG.MBN
ECHO 21 - APAGAR CACHE
ECHO 22 - APAGAR DADOS DE USUARIO
ECHO 23 - REINCIAR NORMALMENTE
ECHO 24 - VOLTAR AO MENU PRINCIPAL
ECHO.

SET /P M=DIGITE SUA ESCOLHA E PRESSIONE ENTER:

IF %M%==1 adb devices
IF %M%==2 mfastboot devices
IF %M%==3 mfastboot reboot-bootloader
IF %M%==4 adb reboot bootloader
IF %M%==5 mfastboot oem get_unlock_data
IF %M%==6 echo Copie todo o codigo gerado, escolha a opcao 7 e siga os procedimentos do site.
IF %M%==7 start https://motorola-global-portal-pt.custhelp.com/app/standalone/bootloader/unlock-your-device-a
IF %M%==8 mfastboot flash partition gpt.bin
IF %M%==9 mfastboot flash motoboot motoboot.img
IF %M%==10 mfastboot flash boot boot.img
IF %M%==11 mfastboot flash recovery recovery.img
IF %M%==12 mfastboot flash logo logo.bin
IF %M%==13 mfastboot flash system system.img_sparsechunk.0
IF %M%==14 mfastboot flash system system.img_sparsechunk.1
IF %M%==15 mfastboot flash system system.img_sparsechunk.2
IF %M%==16 mfastboot flash system system.img_sparsechunk.3
IF %M%==17 mfastboot flash modem NON-HLOS.bin
IF %M%==18 mfastboot erase modemst1
IF %M%==19 mfastboot erase modemst2
IF %M%==20 mfastboot flash fsg fsg.mbn
IF %M%==21 mfastboot erase cache
IF %M%==22 mfastboot erase userdata
IF %M%==23 mfastboot reboot
IF %M%==24 goto start
goto submenu_3

:submenu_4
echo.
ECHO MENU MOTO G2 - XT1068
echo.
ECHO 1 - VERIFICAR CONEXAO ADB
ECHO 2 - VERIFICAR CONEXAO FASTBOOT
ECHO 3 - REINICIAR NO MODO BOOTLOADER
ECHO 4 - REINICIAR NO MODO FASTBOOT
ECHO 5 - DESBLOQUEAR BOOTLOADER - PASSO 1
ECHO 6 - DESBLOQUEAR BOOTLOADER - PASSO 2
ECHO 7 - DESBLOQUEAR BOOTLOADER - PASSO 3
ECHO 8 - INSTALAR PARTITION GPT.BIN
ECHO 9 - INSTALAR MOTOBOOT.IMG
ECHO 10 - INSTALAR BOOT.IMG
ECHO 11 - INSTALAR RECOVERY.IMG
ECHO 12 - INSTALAR LOGO.BIN
ECHO 13 - INSTALAR SYSTEM.IMG.SPARSECHUNK.0
ECHO 14 - INSTALAR SYSTEM.IMG.SPARSECHUNK.1
ECHO 15 - INSTALAR SYSTEM.IMG.SPARSECHUNK.2
ECHO 16 - INSTALAR SYSTEM.IMG.SPARSECHUNK.3
ECHO 17 - INSTALAR NON-HLOS.BIN
ECHO 18 - APAGAR MODEMST1
ECHO 19 - APAGAR MODEMST2
ECHO 20 - INSTALAR FSG.MBN
ECHO 21 - APAGAR CACHE
ECHO 22 - APAGAR DADOS DE USUARIO
ECHO 23 - REINCIAR NORMALMENTE
ECHO 24 - VOLTAR AO MENU PRINCIPAL
ECHO.

SET /P M=DIGITE SUA ESCOLHA E PRESSIONE ENTER:

IF %M%==1 adb devices
IF %M%==2 mfastboot devices
IF %M%==3 mfastboot reboot-bootloader
IF %M%==4 adb reboot bootloader
IF %M%==5 mfastboot oem get_unlock_data
IF %M%==6 echo Copie todo o codigo gerado, escolha a opcao 7 e siga os procedimentos do site.
IF %M%==7 start https://motorola-global-portal-pt.custhelp.com/app/standalone/bootloader/unlock-your-device-a
IF %M%==8 mfastboot flash partition gpt.bin
IF %M%==9 mfastboot flash motoboot motoboot.img
IF %M%==10 mfastboot flash boot boot.img
IF %M%==11 mfastboot flash recovery recovery.img
IF %M%==12 mfastboot flash logo logo.bin
IF %M%==13 mfastboot flash system system.img_sparsechunk.0
IF %M%==14 mfastboot flash system system.img_sparsechunk.1
IF %M%==15 mfastboot flash system system.img_sparsechunk.2
IF %M%==16 mfastboot flash system system.img_sparsechunk.3
IF %M%==17 mfastboot flash modem NON-HLOS.bin
IF %M%==18 mfastboot erase modemst1
IF %M%==19 mfastboot erase modemst2
IF %M%==20 mfastboot flash fsg fsg.mbn
IF %M%==21 mfastboot erase cache
IF %M%==22 mfastboot erase userdata
IF %M%==23 mfastboot reboot
IF %M%==24 goto start
goto submenu_4

:submenu_5
echo.
ECHO MENU MOTO G2 - XT1069
echo.
ECHO 1 - VERIFICAR CONEXAO ADB
ECHO 2 - VERIFICAR CONEXAO FASTBOOT
ECHO 3 - REINICIAR NO MODO BOOTLOADER
ECHO 4 - REINICIAR NO MODO FASTBOOT
ECHO 5 - DESBLOQUEAR BOOTLOADER - PASSO 1
ECHO 6 - DESBLOQUEAR BOOTLOADER - PASSO 2
ECHO 7 - DESBLOQUEAR BOOTLOADER - PASSO 3
ECHO 8 - INSTALAR PARTITION GPT.BIN
ECHO 9 - INSTALAR MOTOBOOT.IMG
ECHO 10 - INSTALAR BOOT.IMG
ECHO 11 - INSTALAR RECOVERY.IMG
ECHO 12 - INSTALAR LOGO.BIN
ECHO 13 - INSTALAR SYSTEM.IMG.SPARSECHUNK.0
ECHO 14 - INSTALAR SYSTEM.IMG.SPARSECHUNK.1
ECHO 15 - INSTALAR SYSTEM.IMG.SPARSECHUNK.2
ECHO 16 - INSTALAR SYSTEM.IMG.SPARSECHUNK.3
ECHO 17 - INSTALAR NON-HLOS.BIN
ECHO 18 - APAGAR MODEMST1
ECHO 19 - APAGAR MODEMST2
ECHO 20 - INSTALAR FSG.MBN
ECHO 21 - APAGAR CACHE
ECHO 22 - APAGAR DADOS DE USUARIO
ECHO 23 - REINCIAR NORMALMENTE
ECHO 24 - VOLTAR AO MENU PRINCIPAL
ECHO.

SET /P M=DIGITE SUA ESCOLHA E PRESSIONE ENTER:

IF %M%==1 adb devices
IF %M%==2 mfastboot devices
IF %M%==3 mfastboot reboot-bootloader
IF %M%==4 adb reboot bootloader
IF %M%==5 mfastboot oem get_unlock_data
IF %M%==6 echo Copie todo o codigo gerado, escolha a opcao 7 e siga os procedimentos do site.
IF %M%==7 start https://motorola-global-portal-pt.custhelp.com/app/standalone/bootloader/unlock-your-device-a
IF %M%==8 mfastboot flash partition gpt.bin
IF %M%==9 mfastboot flash motoboot motoboot.img
IF %M%==10 mfastboot flash boot boot.img
IF %M%==11 mfastboot flash recovery recovery.img
IF %M%==12 mfastboot flash logo logo.bin
IF %M%==13 mfastboot flash system system.img_sparsechunk.0
IF %M%==14 mfastboot flash system system.img_sparsechunk.1
IF %M%==15 mfastboot flash system system.img_sparsechunk.2
IF %M%==16 mfastboot flash system system.img_sparsechunk.3
IF %M%==17 mfastboot flash modem NON-HLOS.bin
IF %M%==18 mfastboot erase modemst1
IF %M%==19 mfastboot erase modemst2
IF %M%==20 mfastboot flash fsg fsg.mbn
IF %M%==21 mfastboot erase cache
IF %M%==22 mfastboot erase userdata
IF %M%==23 mfastboot reboot
IF %M%==24 goto start
goto submenu_5

:submenu_6
echo.
ECHO MENU MOTO G3 - XT1543
echo.
ECHO 1 - VERIFICAR CONEXAO ADB
ECHO 2 - VERIFICAR CONEXAO FASTBOOT
ECHO 3 - REINICIAR NO MODO BOOTLOADER
ECHO 4 - REINICIAR NO MODO FASTBOOT
ECHO 5 - DESBLOQUEAR BOOTLOADER - PASSO 1
ECHO 6 - DESBLOQUEAR BOOTLOADER - PASSO 2
ECHO 7 - DESBLOQUEAR BOOTLOADER - PASSO 3
ECHO 8 - INSTALAR PARTITION GPT.BIN
ECHO 9 - INSTALAR MOTOBOOT.IMG
ECHO 10 - INSTALAR BOOT.IMG
ECHO 11 - INSTALAR RECOVERY.IMG
ECHO 12 - INSTALAR LOGO.BIN
ECHO 13 - INSTALAR SYSTEM.IMG.SPARSECHUNK.0
ECHO 14 - INSTALAR SYSTEM.IMG.SPARSECHUNK.1
ECHO 15 - INSTALAR SYSTEM.IMG.SPARSECHUNK.2
ECHO 16 - INSTALAR SYSTEM.IMG.SPARSECHUNK.3
ECHO 17 - INSTALAR NON-HLOS.BIN
ECHO 18 - APAGAR MODEMST1
ECHO 19 - APAGAR MODEMST2
ECHO 20 - INSTALAR FSG.MBN
ECHO 21 - APAGAR CACHE
ECHO 22 - APAGAR DADOS DE USUARIO
ECHO 23 - REINCIAR NORMALMENTE
ECHO 24 - VOLTAR AO MENU PRINCIPAL
ECHO.

SET /P M=DIGITE SUA ESCOLHA E PRESSIONE ENTER:

IF %M%==1 adb devices
IF %M%==2 mfastboot devices
IF %M%==3 mfastboot reboot-bootloader
IF %M%==4 adb reboot bootloader
IF %M%==5 mfastboot oem get_unlock_data
IF %M%==6 echo Copie todo o codigo gerado, escolha a opcao 7 e siga os procedimentos do site.
IF %M%==7 start https://motorola-global-portal-pt.custhelp.com/app/standalone/bootloader/unlock-your-device-a
IF %M%==8 mfastboot flash partition gpt.bin
IF %M%==9 mfastboot flash motoboot motoboot.img
IF %M%==10 mfastboot flash boot boot.img
IF %M%==11 mfastboot flash recovery recovery.img
IF %M%==12 mfastboot flash logo logo.bin
IF %M%==13 mfastboot flash system system.img_sparsechunk.0
IF %M%==14 mfastboot flash system system.img_sparsechunk.1
IF %M%==15 mfastboot flash system system.img_sparsechunk.2
IF %M%==16 mfastboot flash system system.img_sparsechunk.3
IF %M%==17 mfastboot flash modem NON-HLOS.bin
IF %M%==18 mfastboot erase modemst1
IF %M%==19 mfastboot erase modemst2
IF %M%==20 mfastboot flash fsg fsg.mbn
IF %M%==21 mfastboot erase cache
IF %M%==22 mfastboot erase userdata
IF %M%==23 mfastboot reboot
IF %M%==24 goto start
goto submenu_6

:bail
