@echo off
chcp 65001 >nul
color 0b
title SNOW TRACKING - FIVE M OPTIMIZER (EXTREME)

:menu
cls
echo ==================================================
echo                 SNOW TRACKING
echo           FIVE M OPTIMIZER - EXTREME FPS
echo ==================================================
echo.
echo [1] Otimizar FiveM (BASIC BOOST)
echo [2] Limpar Cache do Windows (FULL CLEAN)
echo [3] BOOST FPS EXTREMO (ULTRA MODE)
echo [4] Restaurar Sistema (DEFAULT)
echo [0] Sair
echo.
set /p op=Escolha uma opcao: 

if %op%==1 goto opt
if %op%==2 goto clean
if %op%==3 goto ultra
if %op%==4 goto restore
if %op%==0 exit
goto menu

:: =========================
:loading
cls
echo SNOW TRACKING
echo.
echo Processando...
set /a i=0
:loadbar
set /a i+=1
cls
echo SNOW TRACKING
echo.
echo Carregando: %i%%% 
echo [####################]
timeout /t 1 >nul
if %i% LSS 100 goto loadbar
exit /b

:: =========================
:opt
call :loading
cls
echo Otimizando FiveM...
ipconfig /flushdns >nul
wmic process where name="FiveM.exe" CALL setpriority 128 >nul 2>&1
echo.
echo OK - Otimizacao aplicada!
pause
goto menu

:: =========================
:clean
call :loading
cls
echo Limpando cache do sistema...
del /s /f /q %temp%\* >nul 2>&1
del /s /f /q C:\Windows\Temp\* >nul 2>&1
echo.
echo OK - Cache limpo!
pause
goto menu

:: =========================
:ultra
call :loading
cls
echo ATIVANDO BOOST EXTREMO...
echo.
taskkill /f /im OneDrive.exe >nul 2>&1
taskkill /f /im Discord.exe >nul 2>&1
taskkill /f /im XboxAppServices.exe >nul 2>&1
powercfg -setactive SCHEME_MIN

echo.
echo BOOST EXTREMO ATIVADO!
echo Reinicie o FiveM para melhor FPS!
pause
goto menu

:: =========================
:restore
call :loading
cls
echo Restaurando sistema...
powercfg -setactive SCHEME_BALANCED

echo.
echo Sistema restaurado!
pause
goto menu