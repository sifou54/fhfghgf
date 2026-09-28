@ECHO off
title xNet Tweaks - Requesting Admin
MODE 50,6
color 09
echo.
echo.
echo          xNet Tweaks - Requesting Admin
Reg.exe add HKLM /F >nul 2>&1
if %errorlevel% neq 0 start "" /wait /I /min powershell -NoProfile -Command start -verb runas "'%~s0'" && exit /b

chcp 65001

reg add "HKCU\Console" /v VirtualTerminalLevel /t REG_DWORD /d 1 /f >nul 2>&1

set "ESC="

title  
cls
MODE 22,6
cls

MODE 94,15

cls
echo. 
echo     Welcome %USERNAME%, To xNet Tweaks!
echo. 

goto main
 
:main

title xNet Tweaks

:: Change Window Size
MODE 22,6

MODE 120,34

cls
echo.
echo.                             
echo.                                           
echo.                                                  ░███    ░██               ░██    
echo.                                                  ░████   ░██               ░██    
echo.                                       ░██    ░██ ░██░██  ░██  ░███████  ░████████ 
echo.                                        ░██  ░██  ░██ ░██ ░██ ░██    ░██    ░██    
echo.                                         ░█████   ░██  ░██░██ ░█████████    ░██    
echo.                                        ░██  ░██  ░██   ░████ ░██           ░██    
echo.                                       ░██    ░██ ░██    ░███  ░███████      ░████  
echo.
echo.
echo.
echo.                %ESC%[34m[%ESC%[37m 1 %ESC%[34m]%ESC%[37m Windows Tweaks       %ESC%[34m^|       [%ESC%[37m 2 %ESC%[34m] %ESC%[37m AMD GPU Tweaks       %ESC%[34m^|       [%ESC%[37m 3 %ESC%[34m] %ESC%[37m NVIDIA GPU Tweaks %ESC%[0m
echo.                  
echo.                                           %ESC%[34m^|          [%ESC%[37m 4 %ESC%[34m] %ESC%[37m Ram Tweaks        %ESC%[34m^|   
echo.                                           %ESC%[34m^|          [%ESC%[37m 5 %ESC%[34m] %ESC%[37m Wi-Fi   R         %ESC%[34m^|
echo.                                           %ESC%[34m^|          [%ESC%[37m 6 %ESC%[34m] %ESC%[37m Bluetooth R       %ESC%[34m^|
echo.
echo.                                      %ESC%[37mIf You Need %ESC%[34mSUPPORT%ESC%[37m Open A %ESC%[34mTICKET%ESC%[37m In Our %ESC%[34mDISCORD%ESC%[37m.%ESC%[0m
echo.                                    %ESC%[34m^____________________________________________________
echo.
echo.                                                     %ESC%[34m[%ESC%[37m D %ESC%[34m]%ESC%   [37m Discord%ESC%[0m
echo.                                                    %ESC%[34m^___________________
echo.                              
echo.
set /p input=
if /i %input% == 1 goto Windows Tweaking 
if /i %input% == 2 goto AMD GPU TWEAKS 
if /i %input% == 3 goto NVIDIA GPU TWEAKS
if /i %input% == 4 goto ram
if /i %input% == 5 goto WIFI REVERT
if /i %input% == 6 goto BLUETOOTH REVERT
if /i %input% == d start https://discord.gg/sxsRcgcNGM
echo "%input%" isn't a right choice, try again!
goto main

:Windows Tweaking 
echo You selected Windows Tweaks!

echo  Starting Windows Tweaking Session...
echo.


for %%z in (
  DoSvc
  NaturalAuthentication
) do (
  Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\%%z" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
)

for %%t in (
  HvHost
  vmickvpexchange
  vmicguestinterface
  vmicshutdown
  vmicheartbeat
  vmicvmsession
  vmicrdv
  vmictimesync
  vmicvss
) do (
  Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\%%t" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
)

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Fax" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PrintNotify" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\SCardSvr" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\ScDeviceEnum" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\SCPolicySvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\CertPropSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1

%dmv% "WAN Miniport (IKEv2)" >nul 2>&1
%dmv% "WAN Miniport (IP)" >nul 2>&1
%dmv% "WAN Miniport (IPv6)" >nul 2>&1
%dmv% "WAN Miniport (L2TP)" >nul 2>&1
%dmv% "WAN Miniport (Network Monitor)" >nul 2>&1
%dmv% "WAN Miniport (PPPOE)" >nul 2>&1
%dmv% "WAN Miniport (PPTP)" >nul 2>&1
%dmv% "WAN Miniport (SSTP)" >nul 2>&1
%dmv% "Composite Bus Enumerator" >nul 2>&1
%dmv% "NDIS Virtual Network Adapter Enumerator" >nul 2>&1

reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f >nul 2>&1&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "IOMMUFlags" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Control Panel\Accessibility\HighContrast" /v "Flags" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Control Panel\Accessibility\SoundSentry" /v "Flags" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\Control Panel\Accessibility\TimeOut" /v "Flags" /t REG_SZ /d "0" /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Beep" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CLFS" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CSC" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasAcd" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Rasl2tp" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasPppoe" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasSstp" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\QWAVEdrv" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cdrom" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fileinfo" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NdisCap" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /f >nul 2>&1

for /f %%i in ('Reg.exe query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" /s /f DmaRemappingCompatible ^| find /i "Services\" ') do (
    Reg.exe add "%%i" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f >nul 2>&1
)

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" /v "DiagnosticErrorText" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Strings" /v "DiagnosticErrorText" /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Strings" /v "DiagnosticLinkText" /t REG_SZ /d "" /f >nul 2>&1
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "NoLockScreenCamera" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
sc delete dmwappushservice >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient" /v "CorporateSQMURL" /t REG_SZ /d "0.0.0.0" /f >nul 2>&1
bcdedit /set disabledynamictick Yes >nul 2>&1
bcdedit /set quietboot yes >nul 2>&1
bcdedit /set numaoptimize 1 >nul 2>&1
powercfg -h off >nul 2>&1
powercfg -change -disk-timeout-ac 0 >nul 2>&1
powercfg -setactive SCHEME_CURRENT >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *3DBuilder* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *bing* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *bingfinance* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *bingsports* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *BingWeather* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *CommsPhone* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *Drawboard PDF* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *Facebook* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *Getstarted* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *Microsoft.Messaging* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *MicrosoftOfficeHub* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *people* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *SkypeApp* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *solit* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *Sway* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *Twitter* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *WindowsAlarms* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *WindowsPhone* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *WindowsMaps* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *WindowsFeedbackHub* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *WindowsSoundRecorder* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *windowscommunicationsapps* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage -allusers *zune* | Remove-AppxPackage" >nul 2>&1
powershell -Command "Get-AppxPackage *skype* | Remove-AppxPackage" >nul 2>&1
powershell -Command "Get-AppxPackage *solitaire* | Remove-AppxPackage" >nul 2>&1
powershell -Command "Get-AppxPackage *officehub* | Remove-AppxPackage" >nul 2>&1
powershell -Command "Get-AppxPackage *candycrush* | Remove-AppxPackage" >nul 2>&1
powershell -Command "Get-AppxPackage *YourPhone* | Remove-AppxPackage" >nul 2>&1
powershell -Command "Get-AppxPackage *OneDrive* | Remove-AppxPackage" >nul 2>&1
powershell -Command "taskkill /f /im OneDrive.exe" >nul 2>&1
%SystemRoot%\System32\OneDriveSetup.exe /uninstall >nul 2>&1
PowerShell -Command "Get-AppxPackage *Cortana* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage *WindowsCamera* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage *photos* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage *ConnectivityStore* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage *ContentDeliveryManager* | Remove-AppxPackage" >nul 2>&1
PowerShell -Command "Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage" >nul 2>&1

echo.
echo  Windows Tweaking Session completed!
pause
goto Main


:AMD GPU TWEAKS credits im ribiy 
echo.
echo  You selected AMD GPU
	
:tweaks

reg add "%target%" /v "ReportAnalytics" /t REG_DWORD /d 0 /f
reg add "%target%" /v "NotifySubscription" /t REG_DWORD /d 0 /f
reg add "%target%" /v "AllowSubscription" /t REG_DWORD /d 0 /f
reg add "%target%" /v "ShowReleaseNotes" /t REG_DWORD /d 0 /f
::reg add "%target%" /v "ECCMode" /t REG_DWORD /d 0 /f

reg add "%target%" /v "StutterMode" /t REG_DWORD /d 0 /f
::reg add "%target%" /v "DisableLTR" /t REG_DWORD /d 1 /f
::reg add "%target%" /v "BGM_EnableLTR" /t REG_DWORD /d 0 /f
::reg add "%target%" /v "PP_EnableDynamicLTRSupport" /t REG_DWORD /d 0 /f
reg add "%target%" /v "KMD_EnableAmdFendrOptions" /t REG_DWORD /d 0 /f
reg add "%target%" /v "KMD_ChillEnabled" /t REG_DWORD /d 0 /f
reg add "%target%" /v "KMD_DeLagEnabled" /t REG_DWORD /d 1 /f
reg add "%target%" /v "KMD_FramePacingSupport" /t REG_DWORD /d 0 /f
reg add "%target%" /v "KMD_RadeonBoostEnabled" /t REG_DWORD /d 0 /f
reg add "%target%" /v "DalDisableStutter" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableBlockWrite" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableFBCSupport" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableFBCForFullScreenApp" /t REG_DWORD /d 1 /f

reg add "%target%" /v "PP_Force3DPerformanceMode" /t REG_DWORD /d 1 /f
reg add "%target%" /v "PP_ForceHighDPMLevel" /t REG_DWORD /d 1 /f
reg add "%target%" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d 1 /f
reg add "%target%" /v "PP_GfxOffControl" /t REG_DWORD /d 0 /f
reg add "%target%" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d 0 /f
reg add "%target%" /v "PP_EnableRaceToIdle" /t REG_DWORD /d 0 /f
::reg add "%target%" /v "PP_SclkDpmDisabled" /t REG_DWORD /d 1 /f
::reg add "%target%" /v "PP_MclkDpmDisabled" /t REG_DWORD /d 1 /f
::reg add "%target%" /v "PP_SocclkDpmDisabled" /t REG_DWORD /d 1 /f
::reg add "%target%" /v "PP_PcieDpmDisabled" /t REG_DWORD /d 1 /f

reg add "%target%" /v "EnableUlps" /t REG_DWORD /d 0 /f
reg add "%target%" /v "EnableUlps_NA" /t REG_SZ /d "0" /f
reg add "%target%" /v "PP_DisableULPS" /t REG_DWORD /d 1 /f
reg add "%target%" /v "KMD_EnableULPS" /t REG_DWORD /d 0 /f
reg add "%target%" /v "KMD_ForceD3ColdSupport" /t REG_DWORD /d 0 /f

reg add "%target%" /v "EnableAspmL0s" /t REG_DWORD /d 0 /f
reg add "%target%" /v "EnableAspmL1" /t REG_DWORD /d 0 /f
reg add "%target%" /v "EnableAspmL1SS" /t REG_DWORD /d 0 /f
reg add "%target%" /v "DisableAspmL0s" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableAspmL1" /t REG_DWORD /d 1 /f

reg add "%target%" /v "DisableGfxClockGating" /t REG_DWORD /d 1 /f
::reg add "%target%" /v "DisableAllClockGating" /t REG_DWORD /d 1 /f
::reg add "%target%" /v "DisableSysClockGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableVceClockGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableSamuClockGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableRomMGCGClockGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableGfxCoarseGrainClockGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableGfxMediumGrainClockGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableGfxFineGrainClockGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableHdpMGClockGating" /t REG_DWORD /d 1 /f
::reg add "%target%" /v "DisableGfxMGCG" /t REG_DWORD /d 1 /f
reg add "%target%" /v "EnableVceSwClockGating" /t REG_DWORD /d 0 /f
reg add "%target%" /v "EnableUvdClockGating" /t REG_DWORD /d 0 /f
reg add "%target%" /v "EnableGfxClockGatingThruSmu" /t REG_DWORD /d 0 /f
reg add "%target%" /v "EnableSysClockGatingThruSmu" /t REG_DWORD /d 0 /f
reg add "%target%" /v "DisableXdmaSclkGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DalFineGrainClockGating" /t REG_DWORD /d 0 /f
reg add "%target%" /v "DisableRomMediumGrainClockGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableNbioMediumGrainClockGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableMcMediumGrainClockGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "IRQMgrDisableIHClockGating" /t REG_DWORD /d 1 /f

reg add "%target%" /v "DisableGfxMGLS" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableHdpClockPowerGating" /t REG_DWORD /d 1 /f
::reg add "%target%" /v "DisableGmcPowerGating" /t REG_DWORD /d 1 /f
::reg add "%target%" /v "DisableSDMAPowerGating" /t REG_DWORD /d 1 /f
::reg add "%target%" /v "DisableSAMUPowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableUVDPowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableVCEPowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableAcpPowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableGfxCGPowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableStaticGfxMGPowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableDynamicGfxMGPowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableCpPowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableGDSPowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableXdmaPowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableGFXPipelinePowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableQuickGfxMGPowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisablePowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DisableGDSPowerGating" /t REG_DWORD /d 1 /f

reg add "%target%" /v "SMU_DisableMmhubPowerGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "SMU_DisableAthubPowerGating" /t REG_DWORD /d 1 /f

reg add "%target%" /v "DalForceMaxDisplayClock" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DalDisableClockGating" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DalDisableDeepSleep" /t REG_DWORD /d 1 /f
reg add "%target%" /v "DalDisableDiv2" /t REG_DWORD /d 1 /f

reg add "%target%" /v "EnableSpreadSpectrum" /t REG_DWORD /d 0 /f
reg add "%target%" /v "EnableVcePllSpreadSpectrum" /t REG_DWORD /d 0 /f

set "Root=HKLM\System\CurrentControlSet\Services"

for %%S in ("AMD Crash Defender Service" "amdfendr" "amdfendrmgr" "amdlog") do (
    reg query "%Root%\%%~S" >nul 2>&1 && Reg add "%Root%\%%~S" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
)


:: MPO Fix (Global DWM Key)
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /t REG_DWORD /d 5 /f


	powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-PnpDevice -FriendlyName 'AMD Controller Emulation' -ErrorAction SilentlyContinue | Disable-PnpDevice -Confirm:$false"
	powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-PnpDevice -FriendlyName 'AMD Crash Defender' -ErrorAction SilentlyContinue | Disable-PnpDevice -Confirm:$false"
echo.
echo  AMD Tweaks FInished!
echo.
pause
goto main


:NVIDIA GPU TWEAKS
echo.
echo  NVIDIA GPU Tweaks
schtasks /Change /Disable /TN "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /Change /Disable /TN "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /Change /Disable /TN "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /Change /Disable /TN "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /Change /Disable /TN "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /Change /Disable /TN "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /Change /Disable /TN "NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /Change /Disable /TN "NvTmRep_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /Change /Disable /TN "NvTmRepOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
	@echo.
	@echo Successfully applied Nvidia Tweaks
pause
goto main



:WIFI REVERT
echo.
echo  You selected Wi-Fi Revert!
echo  Restoring Wi-Fi services and settings to defaults...
echo.

:: Re-enable WLAN AutoConfig service
sc config Wlansvc start=auto >nul 2>&1
sc start Wlansvc >nul 2>&1

:: Re-enable Network Location Awareness
sc config NlaSvc start=auto >nul 2>&1
sc start NlaSvc >nul 2>&1

:: Re-enable DHCP Client
sc config Dhcp start=auto >nul 2>&1
sc start Dhcp >nul 2>&1

:: Re-enable Network List Service
sc config netprofm start=demand >nul 2>&1
sc start netprofm >nul 2>&1

:: Re-enable DNS Client
sc config Dnscache start=auto >nul 2>&1
sc start Dnscache >nul 2>&1

:: Re-enable WinHTTP Web Proxy Auto-Discovery
sc config WinHttpAutoProxySvc start=demand >nul 2>&1

:: Re-enable Network Store Interface Service
sc config nsi start=auto >nul 2>&1
sc start nsi >nul 2>&1

:: Re-enable Wi-Fi adapter via PowerShell
powershell -NoProfile -Command "Get-NetAdapter | Where-Object {$_.InterfaceDescription -match 'Wi-Fi|Wireless|802.11'} | Enable-NetAdapter -Confirm:$false" >nul 2>&1

:: Restore registry values to defaults
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Wlansvc" /v "Start" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc" /v "Start" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dhcp" /v "Start" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache" /v "Start" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nsi" /v "Start" /t REG_DWORD /d "1" /f >nul 2>&1

echo.
echo  Wi-Fi Revert completed! Please restart your PC for full effect.
pause
goto main


:BLUETOOTH REVERT
echo.
echo  You selected Bluetooth Revert!
echo  Restoring Bluetooth services and settings to defaults...
echo.

:: Re-enable Bluetooth Support Service
sc config bthserv start=demand >nul 2>&1
sc start bthserv >nul 2>&1

:: Re-enable Bluetooth Audio Gateway Service
sc config BTAGService start=demand >nul 2>&1
sc start BTAGService >nul 2>&1

:: Re-enable Bluetooth AVCTP Service
sc config BthAvctpSvc start=demand >nul 2>&1
sc start BthAvctpSvc >nul 2>&1

:: Re-enable Bluetooth User Support Service
sc config BluetoothUserService start=demand >nul 2>&1

:: Re-enable Bluetooth Handsfree Service
sc config BthHFSrv start=demand >nul 2>&1

:: Re-enable Bluetooth LE enumeration
sc config BthLEEnum start=demand >nul 2>&1

:: Restore registry values to defaults
reg add "HKLM\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTAGService" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthHFSrv" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthLEEnum" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1

:: Re-enable Bluetooth devices via PowerShell
powershell -NoProfile -Command "Get-PnpDevice -Class Bluetooth -ErrorAction SilentlyContinue | Enable-PnpDevice -Confirm:$false" >nul 2>&1

echo.
echo  Bluetooth Revert completed! Please restart your PC for full effect.
pause
goto main


:Ram Ts
:ram

cls
echo.
echo.                             
echo.                                           
echo.                                                  ░███    ░██               ░██    
echo.                                                  ░████   ░██               ░██    
echo.                                       ░██    ░██ ░██░██  ░██  ░███████  ░████████ 
echo.                                        ░██  ░██  ░██ ░██ ░██ ░██    ░██    ░██    
echo.                                         ░█████   ░██  ░██░██ ░█████████    ░██    
echo.                                        ░██  ░██  ░██   ░████ ░██           ░██    
echo.                                       ░██    ░██ ░██    ░███  ░███████      ░████                                             
echo.
echo.
echo.
echo.                             %ESC%[34m[%ESC%[37m 1 %ESC%[34m]%ESC%[37m 2 GB       %ESC%[34m^|       [%ESC%[37m 2 %ESC%[34m] %ESC%[37m 3 GB       %ESC%[34m^|       [%ESC%[37m 3 %ESC%[34m] %ESC%[37m 4 GB%ESC%[0m
echo.                             %ESC%[34m^_______________________________________________________________
echo.
echo.                             %ESC%[34m[%ESC%[37m 4 %ESC%[34m]%ESC%[37m 6 GB       %ESC%[34m^|       [%ESC%[37m 5 %ESC%[34m] %ESC%[37m 8 GB       %ESC%[34m^|       [%ESC%[37m 6 %ESC%[34m] %ESC%[37m 16 GB%ESC%[0m
echo.                             %ESC%[34m^_______________________________________________________________
echo.
echo.                             %ESC%[34m[%ESC%[37m 7 %ESC%[34m]%ESC%[37m 24 GB      %ESC%[34m^|       [%ESC%[37m 8 %ESC%[34m] %ESC%[37m 32 GB      %ESC%[34m^|       [%ESC%[37m 9 %ESC%[34m] %ESC%[37m 64 GB%ESC%[0m
echo.                             %ESC%[34m^_______________________________________________________________
echo.
echo.
echo.
echo.
set /p input=
if /i %input% == 1 goto 2g
if /i %input% == 2 goto 3g
if /i %input% == 3 goto 4g
if /i %input% == 4 goto 6g
if /i %input% == 5 goto 8g
if /i %input% == 6 goto 16g
if /i %input% == 7 goto 24g
if /i %input% == 8 goto 32g
if /i %input% == 9 goto 64g
echo "%input%" isn't a right choice, try again!
goto main


:4g
echo You selected 4 GB RAM Tweak!
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "ffffffff" /f > nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IOPageLockLimit" /t REG_DWORD /d "ffffffff" /f > nul
echo Tweaks applied successfully!
pause
goto main

:6g
echo You selected 6 GB RAM Tweak!
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "ffffffff" /f > nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IOPageLockLimit" /t REG_DWORD /d "ffffffff" /f > nul
echo Tweaks applied successfully!
pause
goto main

:8g
echo You selected 8 GB RAM Tweak!
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "ffffffff" /f > nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IOPageLockLimit" /t REG_DWORD /d "ffffffff" /f > nul
echo Tweaks applied successfully!
pause
goto main

:16g
echo You selected 16 GB RAM Tweak!
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "ffffffff" /f > nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IOPageLockLimit" /t REG_DWORD /d "ffffffff" /f > nul
echo Tweaks applied successfully!
pause
goto main

:24g
echo You selected 24 GB RAM Tweak!
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "ffffffff" /f > nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IOPageLockLimit" /t REG_DWORD /d "ffffffff" /f > nul
echo Tweaks applied successfully!
pause
goto main

:32g
echo You selected 32 GB RAM Tweak!
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "ffffffff" /f > nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IOPageLockLimit" /t REG_DWORD /d "ffffffff" /f > nul
echo Tweaks applied successfully!
pause
goto main

:64g
echo You selected 64 GB RAM Tweak!
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "ffffffff" /f > nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "IOPageLockLimit" /t REG_DWORD /d "ffffffff" /f > nul
echo Tweaks applied successfully!
pause 
goto main


