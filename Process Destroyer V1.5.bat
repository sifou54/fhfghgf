@echo off
title Process Destroyer V1.5
color 9

set "HIVE=SYSTEM\CurrentControlSet"

:: (Quaked) Process Destroyer Start Screen.
chcp 65001 >nul 2>&1
echo.
echo. 
echo. 
echo. 
echo. 
echo. 
echo.                              ██▓███   ██▀███   ▒█████   ▄████▄  ▓█████   ██████   ██████               
echo.                             ▓██░  ██▒▓██ ▒ ██▒▒██▒  ██▒▒██▀ ▀█  ▓█   ▀ ▒██    ▒ ▒██    ▒               
echo.                             ▓██░ ██▓▒▓██ ░▄█ ▒▒██░  ██▒▒▓█    ▄ ▒███   ░ ▓██▄   ░ ▓██▄                 
echo.                             ▒██▄█▓▒ ▒▒██▀▀█▄  ▒██   ██░▒▓▓▄ ▄██▒▒▓█  ▄   ▒   ██▒  ▒   ██▒              
echo.                             ▒██▒ ░  ░░██▓ ▒██▒░ ████▓▒░▒ ▓███▀ ░░▒████▒▒██████▒▒▒██████▒▒              
echo.                             ▒▓▒░ ░  ░░ ▒▓ ░▒▓░░ ▒░▒░▒░ ░ ░▒ ▒  ░░░ ▒░ ░▒ ▒▓▒ ▒ ░▒ ▒▓▒ ▒ ░              
echo.                              ░▒ ░       ░▒ ░ ▒░  ░ ▒ ▒░   ░  ▒    ░ ░  ░░ ░▒  ░ ░░ ░▒  ░ ░              
echo.                              ░░         ░░   ░ ░ ░ ░ ▒  ░           ░   ░  ░  ░  ░  ░  ░                
echo.                                  ░         ░ ░  ░ ░         ░  ░      ░        ░                
echo.                           ░                                               
echo.                      ▓█████▄ ▓█████   ██████ ▄▄▄█████▓ ██▀███   ▒█████ ▓██   ██▓▓█████  ██▀███  
echo.                      ▒██▀ ██▌▓█   ▀ ▒██    ▒ ▓  ██▒ ▓▒▓██ ▒ ██▒▒██▒  ██▒▒██  ██▒▓█   ▀ ▓██ ▒ ██▒
echo.                      ░██   █▌▒███   ░ ▓██▄   ▒ ▓██░ ▒░▓██ ░▄█ ▒▒██░  ██▒ ▒██ ██░▒███   ▓██ ░▄█ ▒
echo.                      ░▓█▄   ▌▒▓█  ▄   ▒   ██▒░ ▓██▓ ░ ▒██▀▀█▄  ▒██   ██░ ░ ▐██▓░▒▓█  ▄ ▒██▀▀█▄  
echo.                      ░▒████▓ ░▒████▒▒██████▒▒  ▒██▒ ░ ░██▓ ▒██▒░ ████▓▒░ ░ ██▒▓░░▒████▒░██▓ ▒██▒
echo.                       ▒▒▓  ▒ ░░ ▒░ ░▒ ▒▓▒ ▒ ░  ▒ ░░   ░ ▒▓ ░▒▓░░ ▒░▒░▒░   ██▒▒▒ ░░ ▒░ ░░ ▒▓ ░▒▓░
echo.                       ░ ▒  ▒  ░ ░  ░░ ░▒  ░ ░    ░      ░▒ ░ ▒░  ░ ▒ ▒░ ▓██ ░▒░  ░ ░  ░  ░▒ ░ ▒░
echo.                         ░ ░  ░    ░   ░  ░  ░    ░        ░░   ░ ░ ░ ░ ▒  ▒ ▒ ░░     ░     ░░   ░ 
echo.                           ░       ░  ░      ░              ░         ░ ░  ░ ░        ░  ░   ░     
echo.                                         ░                                                 ░ ░                      
echo.                                 ╔════════════════════════════════════════════════════╗
echo.                                 ║             Version 1.5 - By Quaked                ║
echo.                                 ╚════════════════════════════════════════════════════╝
echo.    
echo. ╔═════════╗                                                                        
echo. ║ Loading ║                                              
echo. ╚═════════╝
timeout 2 > nul        

:: (Quaked) Process Destroyer Confirm Screen.
cls
chcp 437 >nul
powershell -Command "Write-Host 'Warning!!! (Not Recommended)' -ForegroundColor White -BackgroundColor Red" 
powershell -Command "Write-Host 'It''s (Required) to be ran on a system that installed windows with an Offline/Local Account.' -ForegroundColor White -BackgroundColor Red"   
powershell -Command "Write-Host 'Otherwise you''ll get a black screen upon logging in, you cannot get passed.' -ForegroundColor White -BackgroundColor Red"    
powershell -Command "Write-Host 'It''s recommended you install all your necessary apps/programs, alongside your Gpu Drivers and Dcontrol before running.' -ForegroundColor White -BackgroundColor Red"
powershell -Command "Write-Host 'It''s also recommended you run Oneclick alongside Process Destroyer!' -ForegroundColor White -BackgroundColor Red"
echo.
echo Do you want to run Process Destroyer?
set /p choice=Enter (Y/N): 

if /i "%choice%"=="Y" (
cls
echo Quaked Running Process Destroyer
set "HIVE=SYSTEM\CurrentControlSet"
taskkill /f /im ctfmon.exe
REN "C:\Windows\System32\ctfmon.exe" "ctfmon.exee"
taskkill /f /im backgroundTaskHost.exe
REN "C:\Windows\System32\backgroundTaskHost.exe" "backgroundTaskHost.exee"
taskkill /f /im TextInputHost.exe
REN "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\TextInputHost.exe" "TextInputHost.exee"
reg.exe add "HKLM\%HIVE%\Control\Class\{4d36e967-e325-11ce-bfc1-08002be10318}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f
reg.exe add "HKLM\%HIVE%\Control\Class\{4d36e96c-e325-11ce-bfc1-08002be10318}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
reg.exe add "HKLM\%HIVE%\Control\Class\{6bdd1fc6-810f-11d0-bec7-08002be2092f}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
reg.exe add "HKLM\%HIVE%\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "LowerFilters" /t REG_MULTI_SZ /d "" /f
reg.exe add "HKLM\%HIVE%\Control\Class\{ca3e7ab9-b4c3-4ae6-8251-579ef933890f}" /v "UpperFilters" /t REG_MULTI_SZ /d "" /f
reg.exe add "HKLM\%HIVE%\Services\NVDisplay.ContainerLocalSystem" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\BFE" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\mpssvc" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\webthreatdefsvc" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\WpnUserService" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\Dnscache" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\SystemEventsBroker" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\EventSystem" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\AppIDSvc" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\wscsvc" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\NgcCtnrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\TimeBrokerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\QWAVE" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\seclogon" /v "Start" /t REG_DWORD /d "3" /f
reg.exe add "HKLM\%HIVE%\Services\SENS" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\Schedule" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\webthreatdefusersvc" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\hidserv" /v "Start" /t REG_DWORD /d "3" /f
reg.exe add "HKLM\%HIVE%\Services\NgcSvc" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\sppsvc" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\AppXSvc" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\edgeupdate" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\edgeupdatem" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\MicrosoftEdgeElevationService" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\SecurityHealthService" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\WinDefend" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\WdNisSvc" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\SamSs" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKLM\%HIVE%\Services\VaultSvc" /v "Start" /t REG_DWORD /d "4" /f
echo Services successfully disabled!
timeout 2 > nul
   
cls
echo Restarting you're pc!
timeout 2 > nul
shutdown /r /t 0
) else if /i "%choice%"=="N" ( 
cls
echo Process Destroyer Exiting in 2 seconds! 
timeout 2 > nul
exit
)

