:: Made by Quaked
:: TikTok: _Quaked_
:: Discord: https://discord.gg/PaDWbvzJnG
:: Code Snippet Credit: ChrisTitusTech, Privacy Is Freedom, Prolix, Amitxv, Khorive, Majorgeeks, Mathako.
 
@echo off
title OneClick V6.2
color 9

:: (Quaked) Oneclick Start Screen.
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                             ▒█████   ███▄    █ ▓█████     ▄████▄   ██▓     ██▓ ▄████▄   ██ ▄█▀     
echo.                            ▒██▒  ██▒ ██ ▀█   █ ▓█   ▀    ▒██▀ ▀█  ▓██▒    ▓██▒▒██▀ ▀█   ██▄█▒      
echo.                            ▒██░  ██▒▓██  ▀█ ██▒▒███      ▒▓█    ▄ ▒██░    ▒██▒▒▓█    ▄ ▓███▄░      
echo.                            ▒██   ██░▓██▒  ▐▌██▒▒▓█  ▄    ▒▓▓▄ ▄██▒▒██░    ░██░▒▓▓▄ ▄██▒▓██ █▄      
echo.                            ░ ████▓▒░▒██░   ▓██░░▒████▒   ▒ ▓███▀ ░░██████▒░██░▒ ▓███▀ ░▒██▒ █▄     
echo.                            ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░░ ▒░ ░   ░ ░▒ ▒  ░░ ▒░▓  ░░▓  ░ ░▒ ▒  ░▒ ▒▒ ▓▒     
echo.                              ░ ▒ ▒░ ░ ░░   ░ ▒░ ░ ░  ░     ░  ▒   ░ ░ ▒  ░ ▒ ░  ░  ▒   ░ ░▒ ▒░     
echo.                            ░ ░ ░ ▒     ░   ░ ░    ░      ░          ░ ░    ▒ ░░        ░ ░░ ░      
echo.                                ░ ░           ░    ░  ░   ░ ░          ░  ░ ░  ░ ░      ░  ░        
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║             Version 6.2 - By Quaked                ║
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
echo. 
echo. ╔═════════╗                                                                        
echo. ║ Loading ║                                              
echo. ╚═════════╝
timeout 2 > nul              

:: (Quaked) Restore Point.
cls
color D
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                 ██████╗ ███████╗███████╗████████╗ ██████╗ ██████╗ ███████╗
echo.                                 ██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝
echo.                                 ██████╔╝█████╗  ███████╗   ██║   ██║   ██║██████╔╝█████╗  
echo.                                 ██╔══██╗██╔══╝  ╚════██║   ██║   ██║   ██║██╔══██╗██╔══╝  
echo.                                 ██║  ██║███████╗███████║   ██║   ╚██████╔╝██║  ██║███████╗
echo.                                 ╚═╝  ╚═╝╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║   Create a restore point to undo system changes!   ║
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.                                                                       

chcp 437 >nul
powershell -Command "Write-Host 'Recommended!' -ForegroundColor White -BackgroundColor Red"
echo Do you want to make a restore point?

set /p choice=Enter (Y/N): 
if /i "%choice%"=="Y" (
    powershell -ExecutionPolicy Unrestricted -NoProfile Enable-ComputerRestore -Drive 'C:\' >nul 2>&1
    reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f >nul 2>&1 
    reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
    reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f >nul 2>&1
    timeout 1 > nul  
    echo Creating restore point...
    powershell -Command "Checkpoint-Computer -Description 'OneClick V6.2 Restore Point'"
    echo Restore point successfully created.
    timeout 2 > nul 
) else if /i "%choice%"=="N" (
    echo Not creating a restore point, use at discretion.
    timeout 2 > nul 
) else (
    echo Invalid choice. Please choose Y or N.
)

:: ChrisTitusTech's Windows Utility tweaks, Mixed with a couple of Quaked created things.
cls
color 9
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                 ██████╗████████╗████████╗
echo.                                                ██╔════╝╚══██╔══╝╚══██╔══╝
echo.                                                ██║        ██║      ██║   
echo.                                                ██║        ██║      ██║   
echo.                                                ╚██████╗   ██║      ██║   
echo.                                                 ╚═════╝   ╚═╝      ╚═╝   
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║     Running ChrisTitusTech's Windows Utility...    ║       
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                          
timeout 2 > nul  

cls
chcp 437 >nul
color D
echo (CTT) Disabling Activity History...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d 0 /f
echo Activity History disabled successfully.
timeout 2 > nul

cls
color 9
echo (CTT) Disabling Location...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" /v "Status" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\Maps" /v "AutoUpdateEnabled" /t REG_DWORD /d 0 /f
echo Location related things disabled successfully.
timeout 2 > nul

cls
color D
echo (CTT) Disabling Notifications...
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v DisableNotificationCenter /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v ToastEnabled /t REG_DWORD /d 0 /f
echo Notification disabled successfully.
timeout 2 > nul

cls
color 9
echo (CTT) Removing Storage Sense...
powershell -Command "Remove-Item -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy' -Recurse -ErrorAction SilentlyContinue"
echo Storage Sense disabled successfully.
timeout 2 > nul

cls
color D
echo (CTT) Disabling StickyKeys...
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\StickyKeys" /v Flags /t REG_SZ /d 506 /f
echo StickyKeys disabled successfully.
timeout 2 > nul

cls
color 9
echo (CTT) Enabling Numlock on start up...
reg.exe add "HKU\.DEFAULT\Control Panel\Keyboard" /v InitialKeyboardIndicators /t REG_DWORD /d 80000002 /f
echo Enabled Numlock on start up successfully
timeout 2 > nul

cls
color D
echo (CTT) Enabling Win 10 Right Click Menu...
powershell -Command "New-Item -Path 'HKCU:\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}' -Name 'InprocServer32' -Force -Value ''"
echo Win 10 Right Click Menu enabled successfully.
timeout 2 > nul

cls
color 9
echo (CTT) Show File Extensions...
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f
echo Show File Extension enabled successfully.
timeout 2 > nul

cls
color D
echo (Quaked) Show Hidden Files and Folders...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 1 /f
echo Show Hidden Files and Folders enabled successfully.
timeout 2 > nul

cls
color 9
echo (CTT) Disabling Taskbar Widgets...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarDa /t REG_DWORD /d 0 /f
echo Taskbar Widgets disabled successfully.
timeout 2 > nul

cls
color D
echo (CTT) Setting Display For Performance...
reg add "HKCU\Control Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "200" /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 3 /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarMn" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarDa" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d 0 /f
powershell -Command "Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name 'UserPreferencesMask' -Type Binary -Value ([byte[]](144,18,3,128,16,0,0,0))"
echo Display tweaks applied successfully.
timeout 2 > nul

:: (Quaked) System Color Theme.
cls
color 9
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                  ███████╗██╗   ██╗███████╗████████╗███████╗███╗   ███╗
echo.                                  ██╔════╝╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔════╝████╗ ████║
echo.                                  ███████╗ ╚████╔╝ ███████╗   ██║   █████╗  ██╔████╔██║
echo.                                  ╚════██║  ╚██╔╝  ╚════██║   ██║   ██╔══╝  ██║╚██╔╝██║
echo.                                  ███████║   ██║   ███████║   ██║   ███████╗██║ ╚═╝ ██║
echo.                                  ╚══════╝   ╚═╝   ╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝
echo.                                                     
echo.                                      ████████╗██╗  ██╗███████╗███╗   ███╗███████╗         
echo.                                      ╚══██╔══╝██║  ██║██╔════╝████╗ ████║██╔════╝         
echo.                                         ██║   ███████║█████╗  ██╔████╔██║█████╗           
echo.                                         ██║   ██╔══██║██╔══╝  ██║╚██╔╝██║██╔══╝           
echo.                                         ██║   ██║  ██║███████╗██║ ╚═╝ ██║███████╗         
echo.                                         ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝         
echo.
echo.
echo.
echo Choose an option:
echo 1. Dark Mode
echo 2. Light Mode
echo 3. Skip!
chcp 437 >nul
set /p option="Enter option number: "

if "%option%"=="1" (
    echo Turning On Darkmode...
    reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v AppsUseLightTheme /t REG_DWORD /d 0 /f
    reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v SystemUsesLightTheme /t REG_DWORD /d 0 /f
    echo Darkmode enabled successfully.
    timeout 2 > nul
) else if "%option%"=="2" (
    echo Turning On Lightmode...
    reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v AppsUseLightTheme /t REG_DWORD /d 1 /f
    reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v SystemUsesLightTheme /t REG_DWORD /d 1 /f
    echo Lightmode enabled successfully.
    timeout 2 > nul
) else if "%option%"=="3" (
    echo Skipping System Theme Selection!
    timeout 1 > nul
) else (
    echo Invalid option selected.
)

cls
color D
echo (CTT) Disabling GameDVR...
reg add "HKCU\System\GameConfigStore" /v GameDVR_FSEBehavior /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\System\GameConfigStore" /v GameDVR_DXGIHonorFSEWindowsCompatible /t REG_DWORD /d 1 /f
reg add "HKCU\System\GameConfigStore" /v GameDVR_HonorUserFSEBehaviorMode /t REG_DWORD /d 1 /f
reg add "HKCU\System\GameConfigStore" /v GameDVR_EFSEFeatureFlags /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f
echo GameDVR disabled successfully.
timeout 2 > nul

cls
color 9
echo (Quaked) Disabling Gamemode...
reg add "HKEY_CURRENT_USER\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d 0 /f
echo GameMode disabled successfully.
timeout 2 > nul

cls
color D
echo (Quaked) Enabling Hardware Accelerated GPU Scheduling...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f
echo GPU Scheduling enabled successfully.
timeout 2 > nul

cls
color 9
echo (Quaked) Disabling Transparency Effects...
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize /v EnableTransparency /t REG_DWORD /d 0 /f
echo Transparency Effects disabled successfully.
timeout 2 > nul

cls
color D
echo (CTT) Disabling Mouse Acceleration...
reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold1 /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Mouse" /v MouseThreshold2 /t REG_SZ /d 0 /f
echo Mouse Acceleration disabled successfully.
timeout 2 > nul

cls
color 9
echo (CTT) Disabling Hibernation...
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Power" /v HibernateEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v ShowHibernateOption /t REG_DWORD /d 0 /f
powercfg.exe /hibernate off
echo Hibernation disabled successfully.
timeout 2 > nul

cls
color D
echo (CTT) Disabling HomeGroup...
sc config HomeGroupListener start=demand >nul 2>&1
sc config HomeGroupProvider start=demand >nul 2>&1
echo HomeGroup Services disabled successfully.
timeout 2 > nul

cls
color 9
echo (CTT) Disabling Unnecessary WiFi Settings...
reg add "HKLM\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v "Value" /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /v "Value" /t REG_DWORD /d 0 /f
echo Unnecessary WiFi Settings disabled successfully.
timeout 2 > nul

cls
color D
echo (CTT) Disabling Teredo...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v DisabledComponents /t REG_DWORD /d 1 /f
echo Teredo disabled successfully.
timeout 2 > nul

cls
color 9
echo (CTT) Disabling IPv6...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /t REG_DWORD /d 255 /f
powershell -Command "Disable-NetAdapterBinding -Name '*' -ComponentID ms_tcpip6"
echo IPv6 disabled successfully.
timeout 2 > nul

cls
color D
echo (CTT) Disabling UAC...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v EnableLUA /t REG_DWORD /d 0
echo UAC disabled successfully.
timeout 2 > nul

cls
color 9
chcp 437 >nul
@echo off
echo (CTT) Setting Services to manual...
sc config AJRouter start=disabled
sc config ALG start=demand
sc config AppIDSvc start=demand
sc config AppMgmt start=demand
sc config AppReadiness start=demand
sc config AppVClient start=disabled
sc config AppXSvc start=demand
sc config Appinfo start=demand
sc config AssignedAccessManagerSvc start=disabled
sc config AudioEndpointBuilder start=auto
sc config AudioSrv start=auto
sc config Audiosrv start=auto
sc config AxInstSV start=demand
sc config BDESVC start=demand
sc config BFE start=auto
sc config BITS start=delayed-auto
sc config BTAGService start=demand
sc config BcastDVRUserService_dc2a4 start=demand            
sc config BluetoothUserService_dc2a4 start=demand
sc config BrokerInfrastructure start=auto
sc config Browser start=demand
sc config BthAvctpSvc start=auto
sc config BthHFSrv start=auto
sc config CDPSvc start=demand
sc config CDPUserSvc_dc2a4 start=auto
sc config COMSysApp start=demand
sc config CaptureService_dc2a4 start=demand
sc config CertPropSvc start=demand
sc config ClipSVC start=demand
sc config ConsentUxUserSvc_dc2a4 start=demand
sc config CoreMessagingRegistrar start=auto
sc config CredentialEnrollmentManagerUserSvc_dc2a4 start=demand
sc config CryptSvc start=auto
sc config CscService start=demand
sc config DPS start=auto
sc config DcomLaunch start=auto
sc config DcpSvc start=demand
sc config DevQueryBroker start=demand
sc config DeviceAssociationBrokerSvc_dc2a4 start=demand
sc config DeviceAssociationService start=demand
sc config DeviceInstall start=demand
sc config DevicePickerUserSvc_dc2a4 start=demand
sc config DevicesFlowUserSvc_dc2a4 start=demand
sc config Dhcp start=auto
sc config DiagTrack start=disabled
sc config DialogBlockingService start=disabled
sc config DispBrokerDesktopSvc start=auto
sc config DisplayEnhancementService start=demand
sc config DmEnrollmentSvc start=demand
sc config Dnscache start=auto
sc config DoSvc start=delayed-auto
sc config DsSvc start=demand
sc config DsmSvc start=demand
sc config DusmSvc start=auto
sc config EFS start=demand
sc config EapHost start=demand
sc config EntAppSvc start=demand
sc config EventLog start=auto
sc config EventSystem start=auto
sc config FDResPub start=demand
sc config Fax start=demand
sc config FontCache start=auto
sc config FrameServer start=demand
sc config FrameServerMonitor start=demand
sc config GraphicsPerfSvc start=demand
sc config HomeGroupListener start=demand
sc config HomeGroupProvider start=demand
sc config HvHost start=demand
sc config IEEtwCollectorService start=demand
sc config IKEEXT start=demand
sc config InstallService start=demand
sc config InventorySvc start=demand
sc config IpxlatCfgSvc start=demand
sc config KeyIso start=auto
sc config KtmRm start=demand
sc config LSM start=auto
sc config LanmanServer start=auto
sc config LanmanWorkstation start=auto
sc config LicenseManager start=demand
sc config LxpSvc start=demand
sc config MSDTC start=demand
sc config MSiSCSI start=demand
sc config MapsBroker start=delayed-auto
sc config McpManagementService start=demand
sc config MessagingService_dc2a4 start=demand
sc config MicrosoftEdgeElevationService start=demand
sc config MixedRealityOpenXRSvc start=demand
sc config MpsSvc start=auto
sc config MsKeyboardFilter start=demand
sc config NPSMSvc_dc2a4 start=demand
sc config NaturalAuthentication start=demand
sc config NcaSvc start=demand
sc config NcbService start=demand
sc config NcdAutoSetup start=demand
sc config NetSetupSvc start=demand
sc config NetTcpPortSharing start=disabled
sc config Netlogon start=demand
sc config Netman start=demand
sc config NgcCtnrSvc start=demand
sc config NgcSvc start=demand
sc config NlaSvc start=demand
sc config OneSyncSvc_dc2a4 start=auto
sc config P9RdrService_dc2a4 start=demand
sc config PNRPAutoReg start=demand
sc config PNRPsvc start=demand
sc config PcaSvc start=demand
sc config PeerDistSvc start=demand
sc config PenService_dc2a4 start=demand
sc config PerfHost start=demand
sc config PhoneSvc start=demand
sc config PimIndexMaintenanceSvc_dc2a4 start=demand
sc config PlugPlay start=demand
sc config PolicyAgent start=demand
sc config Power start=auto
sc config PrintNotify start=demand
sc config PrintWorkflowUserSvc_dc2a4 start=demand
sc config ProfSvc start=auto
sc config PushToInstall start=demand
sc config QWAVE start=demand
sc config RasAuto start=demand
sc config RasMan start=demand
sc config RemoteAccess start=disabled
sc config RemoteRegistry start=disabled
sc config RetailDemo start=demand
sc config RmSvc start=demand
sc config RpcEptMapper start=auto
sc config RpcLocator start=demand
sc config RpcSs start=auto
sc config SCPolicySvc start=demand
sc config SCardSvr start=demand
sc config SDRSVC start=demand
sc config SEMgrSvc start=demand
sc config SENS start=auto
sc config SNMPTRAP start=demand
sc config SNMPTrap start=demand
sc config SSDPSRV start=demand
sc config SamSs start=auto
sc config ScDeviceEnum start=demand
sc config Schedule start=auto
sc config SecurityHealthService start=demand
sc config Sense start=demand
sc config SensorDataService start=demand
sc config SensorService start=demand
sc config SensrSvc start=demand
sc config SessionEnv start=demand
sc config SgrmBroker start=auto
sc config SharedAccess start=demand
sc config SharedRealitySvc start=demand
sc config ShellHWDetection start=auto
sc config SmsRouter start=demand
sc config Spooler start=auto
sc config SstpSvc start=demand
sc config StateRepository start=demand
sc config StiSvc start=demand
sc config StorSvc start=demand
sc config SysMain start=auto
sc config SystemEventsBroker start=auto
sc config TabletInputService start=demand
sc config TapiSrv start=demand
sc config TermService start=auto
sc config TextInputManagementService start=demand
sc config Themes start=auto
sc config TieringEngineService start=demand
sc config TimeBroker start=demand
sc config TimeBrokerSvc start=demand
sc config TokenBroker start=demand
sc config TrkWks start=auto
sc config TroubleshootingSvc start=demand
sc config TrustedInstaller start=demand
sc config UI0Detect start=demand
sc config UdkUserSvc_dc2a4 start=demand
sc config UevAgentService start=disabled
sc config UmRdpService start=demand
sc config UnistoreSvc_dc2a4 start=demand
sc config UserDataSvc_dc2a4 start=demand
sc config UserManager start=auto
sc config UsoSvc start=demand
sc config VGAuthService start=auto
sc config VMTools start=auto
sc config VSS start=demand
sc config VacSvc start=demand
sc config VaultSvc start=auto
sc config W32Time start=demand
sc config WEPHOSTSVC start=demand
sc config WFDSConMgrSvc start=demand
sc config WMPNetworkSvc start=demand
sc config WManSvc start=demand
sc config WPDBusEnum start=demand
sc config WSService start=demand
sc config WSearch start=delayed-auto
sc config WaaSMedicSvc start=demand
sc config WalletService start=demand
sc config WarpJITSvc start=demand
sc config WbioSrvc start=demand
sc config Wcmsvc start=auto
sc config WcsPlugInService start=demand
sc config WdNisSvc start=demand
sc config WdiServiceHost start=demand
sc config WdiSystemHost start=demand
sc config WebClient start=demand
sc config Wecsvc start=demand
sc config WerSvc start=demand
sc config WiaRpc start=demand
sc config WinDefend start=auto
sc config WinHttpAutoProxySvc start=demand
sc config WinRM start=demand
sc config Winmgmt start=auto
sc config WlanSvc start=auto
sc config WpcMonSvc start=demand
sc config WpnService start=demand
sc config WpnUserService_dc2a4 start=auto
sc config WwanSvc start=demand
sc config XblAuthManager start=demand
sc config XblGameSave start=demand
sc config XboxGipSvc start=demand
sc config XboxNetApiSvc start=demand
sc config autotimesvc start=demand
sc config bthserv start=demand
sc config camsvc start=demand
sc config cbdhsvc_dc2a4 start=demand
sc config cloudidsvc start=demand
sc config dcsvc start=demand
sc config defragsvc start=demand
sc config diagnosticshub.standardcollector.service start=demand
sc config diagsvc start=demand
sc config dmwappushservice start=demand
sc config dot3svc start=demand
sc config edgeupdate start=demand
sc config edgeupdatem start=demand
sc config embeddedmode start=demand
sc config fdPHost start=demand
sc config fhsvc start=demand
sc config gpsvc start=auto
sc config hidserv start=demand
sc config icssvc start=demand
sc config iphlpsvc start=auto
sc config lfsvc start=demand
sc config lltdsvc start=demand
sc config lmhosts start=demand
sc config mpssvc start=auto
sc config msiserver start=demand
sc config netprofm start=demand
sc config nsi start=auto
sc config p2pimsvc start=demand
sc config p2psvc start=demand
sc config perceptionsimulation start=demand
sc config pla start=demand
sc config seclogon start=demand
sc config shpamsvc start=disabled
sc config smphost start=demand
sc config spectrum start=demand
sc config sppsvc start=delayed-auto
sc config ssh-agent start=disabled
sc config svsvc start=demand
sc config swprv start=demand
sc config tiledatamodelsvc start=auto
sc config tzautoupdate start=disabled
sc config uhssvc start=disabled
sc config upnphost start=demand
sc config vds start=demand
sc config vm3dservice start=demand
sc config vmicguestinterface start=demand
sc config vmicheartbeat start=demand
sc config vmickvpexchange start=demand
sc config vmicrdv start=demand
sc config vmicshutdown start=demand
sc config vmictimesync start=demand
sc config vmicvmsession start=demand
sc config vmicvss start=demand
sc config vmvss start=demand
sc config wbengine start=demand
sc config wcncsvc start=demand
sc config webthreatdefsvc start=demand
sc config webthreatdefusersvc_dc2a4 start=auto
sc config wercplsupport start=demand
sc config wisvc start=demand
sc config wlidsvc start=demand
sc config wlpasvc start=demand
sc config wmiApSrv start=demand
sc config workfolderssvc start=demand
sc config wscsvc start=delayed-auto
sc config wuauserv start=demand
sc config wudfsvc start=demand                   
echo Services tweaked successfully.
timeout 2 > nul

cls
color D
echo (CTT) Disabling Telemetry...
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable 
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable 
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable 
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable 
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClient" /Disable 
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /Disable 
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\MareBackup" /Disable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\PcaPatchDbTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Maps\MapsUpdateTask" /Disable
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v ContentDeliveryAllowed /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v OemPreInstalledAppsEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v PreInstalledAppsEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v PreInstalledAppsEverEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SilentInstalledAppsEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338387Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338388Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338389Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353698Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SystemPaneSuggestionsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v NumberOfSIUFInPeriod /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v DoNotShowFeedbackNotifications /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v DisableTailoredExperiencesWithDiagnosticData /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v DisabledByGroupPolicy /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v DODownloadMode /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v fAllowToGetHelp /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v EnthusiastMode /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowTaskViewButton /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /v PeopleBand /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v LongPathsEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 4294967295 /f
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_DWORD /d 1 /f
reg add "HKCU\Control Panel\Desktop" /v AutoEndTasks /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v ClearPageFileAtShutdown /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Ndu" /v Start /t REG_DWORD /d 2 /f
reg add "HKCU\Control Panel\Mouse" /v MouseHoverTime /t REG_SZ /d 400 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v IRPStackSize /t REG_DWORD /d 30 /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v EnableFeeds /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" /v ShellFeedsTaskbarViewMode /t REG_DWORD /d 2 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideSCAMeetNow /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v Priority /t REG_DWORD /d 6 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d High /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /v "ScoobeSystemSettingEnabled" /t REG_DWORD /d 0 /f
echo Telemetry has been disabled successfully.
timeout 1 > nul

cls
color 9
echo (CTT) Running Telemetry Invoke Script...
:: Change boot menu policy to Legacy
bcdedit /set {current} bootmenupolicy Legacy >nul 2>&1

:: Check if the Windows build is less than 22557 and apply Task Manager tweak
for /f "tokens=3" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild 2^>nul ^| findstr /r /c:"CurrentBuild"') do (
    if %%i lss 22557 (
        start /min taskmgr.exe
        timeout /t 2 >nul
        :loop
        reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\TaskManager" /v Preferences >nul 2>&1
        if %errorlevel% equ 0 (
            set preferences=1
        ) else (
            timeout /t 1 >nul
            goto loop
        )
        taskkill /f /im taskmgr.exe >nul 2>&1
        reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\TaskManager" /v Preferences /t REG_BINARY /d 0000000000000000000000000000000000000000000000000000000000000000 /f >nul 2>&1
    )
)

:: Remove specific registry item
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}" /f >nul 2>&1

:: Remove Managed by your organization setting in Edge if exists
if exist "HKLM\SOFTWARE\Policies\Microsoft\Edge" (
    reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /f >nul 2>&1
)

:: Group svchost.exe processes based on RAM
for /f "tokens=2" %%a in ('wmic OS get TotalVisibleMemorySize ^| findstr /r /v "^$"') do set "ram=%%a"
set /a "ram=ram/1024"
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d %ram% /f >nul 2>&1

:: Remove AutoLogger-Diagtrack-Listener.etl if exists and deny SYSTEM permissions
set "autoLoggerDir=%PROGRAMDATA%\Microsoft\Diagnosis\ETLLogs\AutoLogger"
if exist "%autoLoggerDir%\AutoLogger-Diagtrack-Listener.etl" (
    del /q "%autoLoggerDir%\AutoLogger-Diagtrack-Listener.etl" >nul 2>&1
)
icacls "%autoLoggerDir%" /deny SYSTEM:(OI)(CI)F >nul 2>&1

:: Disable Defender Auto Sample Submission
powershell -Command "Set-MpPreference -SubmitSamplesConsent 2 -ErrorAction SilentlyContinue"
echo Telemetry Invoke Script ran successfully.
timeout 2 > nul

cls
color D
echo (CTT) Running OOshutup10 with imported optimized settings...
set "exeURL=https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe"
set "cfgID=1v7N241A58mn__45YSQCsn2lelrz7yR6_"
set "exeFileName=OOSU10.exe"
set "cfgFileName=Quaked OOshutup10.cfg"
set "downloadsFolder=%USERPROFILE%\Appdata\Local\Temp"
chcp 65001 >nul 2>&1
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝
chcp 437 >nul
curl -s -g -k -L -# -o "%downloadsFolder%\%exeFileName%" "%exeURL%"
curl -s -L -o "%downloadsFolder%\%cfgFileName%" "https://drive.google.com/uc?export=download&id=%cfgID%"
if exist "%downloadsFolder%\%exeFileName%" (
    if exist "%downloadsFolder%\%cfgFileName%" (
        echo Download successful!
        echo Importing configuration file quietly...
        "%downloadsFolder%\%exeFileName%" "%downloadsFolder%\%cfgFileName%" /quiet
        timeout 2 > nul
    ) else (
        echo Download of configuration file failed.
        echo Skipping OOshutup10! 
        timeout 2 > nul
    )
) else (
    echo Download of executable failed.
    echo Skipping OOshutup10!
    timeout 2 > nul
)

cls
color 9
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                 ██████╗████████╗████████╗
echo.                                                ██╔════╝╚══██╔══╝╚══██╔══╝
echo.                                                ██║        ██║      ██║   
echo.                                                ██║        ██║      ██║   
echo.                                                ╚██████╗   ██║      ██║   
echo.                                                 ╚═════╝   ╚═╝      ╚═╝   
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║           (CTT) Tweaks Ran Successfully...         ║       
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                          
timeout 2 > nul  

:: (Quaked) Disabling More Services.
cls
color D
chcp 437 >nul
echo Disabling More Services.
sc config ALG start=disabled
sc config AJRouter start=disabled
sc config XblAuthManager start=disabled
sc config XblGameSave start=disabled
sc config XboxNetApiSvc start=disabled
sc config WSearch start=disabled
sc config lfsvc start=disabled
sc config RemoteRegistry start=disabled
sc config WpcMonSvc start=disabled
sc config SEMgrSvc start=disabled
sc config SCardSvr start=disabled
sc config Netlogon start=disabled
sc config CscService start=disabled
sc config icssvc start=disabled
sc config wisvc start=disabled
sc config RetailDemo start=disabled
sc config WalletService start=disabled
sc config Fax start=disabled
sc config WbioSrvc start=disabled
sc config iphlpsvc start=disabled
sc config wcncsvc start=disabled
sc config fhsvc start=disabled
sc config PhoneSvc start=disabled
sc config seclogon start=disabled
sc config FrameServer start=disabled
sc config WbioSrvc start=disabled
sc config StiSvc start=disabled
sc config PcaSvc start=disabled
sc config DPS start=disabled
sc config MapsBroker start=disabled
sc config bthserv start=disabled
sc config BDESVC start=disabled
sc config BthAvctpSvc start=disabled
sc config WpcMonSvc start=disabled
sc config DiagTrack start=disabled
sc config CertPropSvc start=disabled
sc config WdiServiceHost start=disabled
sc config lmhosts start=disabled
sc config WdiSystemHost start=disabled
sc config TrkWks start=disabled
sc config WerSvc start=disabled
sc config TabletInputService start=disabled
sc config EntAppSvc start=disabled
sc config Spooler start=disabled
sc config BcastDVRUserService start=disabled
sc config WMPNetworkSvc start=disabled
sc config diagnosticshub.standardcollector.service start=disabled
sc config DmEnrollmentSvc start=disabled
sc config PNRPAutoReg start=disabled
sc config wlidsvc start=disabled
sc config AXInstSV start=disabled
sc config lfsvc start=disabled
echo services disabled successfully.
timeout 2 > nul

:: Privacy is Freedom's Service Control tweaks.
cls
color 9
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                   ██████╗ ██╗███████╗
echo.                                                   ██╔══██╗██║██╔════╝
echo.                                                   ██████╔╝██║█████╗  
echo.                                                   ██╔═══╝ ██║██╔══╝  
echo.                                                   ██║     ██║██║     
echo.                                                   ╚═╝     ╚═╝╚═╝     
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║  Running Privacy is Freedom's Service Control...   ║       
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                          
timeout 2 > nul  

cls
color D
chcp 437 >nul
echo (PiF) Disable Unnecessary Services and Tasks
reg add "HKLM\System\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\System\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "4" /fd
reg add "HKLM\System\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\System\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AudioCaptureEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "CursorCaptureEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "MicrophoneCaptureEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "2" /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f
sc config wlidsvc start= disabled
sc config DisplayEnhancementService start= disabled
sc config DiagTrack start= disabled
sc config DusmSvc start= disabled
sc config TabletInputService start= disabled
sc config RetailDemo start= disabled
sc config Fax start= disabled
sc config SharedAccess start= disabled
sc config lfsvc start= disabled
sc config WpcMonSvc start= disabled
sc config SessionEnv start= disabled
sc config MicrosoftEdgeElevationService start= disabled
sc config edgeupdate start= disabled
sc config edgeupdatem start= disabled
sc config autotimesvc start= disabled
sc config CscService start= disabled
sc config TermService start= disabled
sc config SensorDataService start= disabled
sc config SensorService start= disabled
sc config SensrSvc start= disabled
sc config shpamsvc start= disabled
sc config diagnosticshub.standardcollector.service start= disabled
sc config PhoneSvc start= disabled
sc config TapiSrv start= disabled
sc config UevAgentService start= disabled
sc config WalletService start= disabled
sc config TokenBroker start= disabled
sc config WebClient start= disabled
sc config MixedRealityOpenXRSvc start= disabled
sc config stisvc start= disabled
sc config WbioSrvc start= disabled
sc config icssvc start= disabled
sc config Wecsvc start= disabled
sc config XboxGipSvc start= disabled
sc config XblAuthManager start= disabled
sc config XboxNetApiSvc start= disabled
sc config XblGameSave start= disabled
sc config SEMgrSvc start= disabled
sc config iphlpsvc start= disabled
sc config Backupper Service" start= disabled
sc config BthAvctpSvc start= disabled
sc config BDESVC start= disabled
sc config cbdhsvc start= disabled
sc config CDPSvc start= disabled
sc config CDPUserSvc start= disabled
sc config DevQueryBroker start= disabled
sc config DevicesFlowUserSvc start= disabled
sc config dmwappushservice start= disabled
sc config DispBrokerDesktopSvc start= disabled
sc config TrkWks start= disabled
sc config dLauncherLoopback start= disabled
sc config EFS start= disabled
sc config fdPHost start= disabled
sc config FDResPub start= disabled
sc config IKEEXT start= disabled
sc config NPSMSvc start= disabled
sc config WPDBusEnum start= disabled
sc config PcaSvc start= disabled
sc config RasMan start= disabled
sc config RetailDemo start=disabled
sc config SstpSvc start=disabled
sc config ShellHWDetection start= disabled
sc config SSDPSRV start= disabled
sc config SysMain start= disabled
sc config OneSyncSvc start= disabled
sc config lmhosts start= disabled
sc config UserDataSvc start= disabled
sc config UnistoreSvc start= disabled
sc config Wcmsvc start= disabled
sc config FontCache start= disabled
sc config W32Time start= disabled
sc config tzautoupdate start= disabled
sc config DsSvc start= disabled
sc config DevicesFlowUserSvc_5f1ad start= disabled
sc config diagsvc start= disabled
sc config DialogBlockingService start= disabled
sc config PimIndexMaintenanceSvc_5f1ad start= disabled
sc config MessagingService_5f1ad start= disabled
sc config AppVClient start= disabled
sc config MsKeyboardFilter start= disabled
sc config NetTcpPortSharing start= disabled
sc config ssh-agent start= disabled
sc config SstpSvc start= disabled
sc config OneSyncSvc_5f1ad start= disabled
sc config wercplsupport start= disabled
sc config WMPNetworkSvc start= disabled
sc config WerSvc start= disabled
sc config WpnUserService_5f1ad start= disabled
sc config WinHttpAutoProxySvc start= disabled
schtasks /DELETE /TN "AMDInstallLauncher" /f
schtasks /DELETE /TN "AMDLinkUpdate" /f
schtasks /DELETE /TN "AMDRyzenMasterSDKTask" /f
schtasks /DELETE /TN "Driver Easy Scheduled Scan" /f
schtasks /DELETE /TN "ModifyLinkUpdate" /f
schtasks /DELETE /TN "SoftMakerUpdater" /f
schtasks /DELETE /TN "StartCN" /f
schtasks /DELETE /TN "StartDVR" /f
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\PcaPatchDbTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
schtasks /Change /TN "Microsoft\Windows\Defrag\ScheduledDefrag" /Disable
schtasks /Change /TN "Microsoft\Windows\Device Information\Device" /Disable
schtasks /Change /TN "Microsoft\Windows\Device Information\Device User" /Disable
schtasks /Change /TN "Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /Disable
schtasks /Change /TN "Microsoft\Windows\Diagnosis\Scheduled" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskCleanup\SilentCleanup" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\StorageSense" /Disable
schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Disable
schtasks /Change /TN "Microsoft\Windows\EnterpriseMgmt\MDMMaintenenceTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClient" /Disable
schtasks /Change /TN "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /Disable
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Disable
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\ReconcileFeatures" /Disable
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataFlushing" /Disable
schtasks /Change /TN "Microsoft\Windows\Flighting\FeatureConfig\UsageDataReporting" /Disable
schtasks /Change /TN "Microsoft\Windows\Flighting\OneSettings\RefreshCache" /Disable
schtasks /Change /TN "Microsoft\Windows\Input\LocalUserSyncDataAvailable" /Disable
schtasks /Change /TN "Microsoft\Windows\Input\MouseSyncDataAvailable" /Disable
schtasks /Change /TN "Microsoft\Windows\Input\PenSyncDataAvailable" /Disable
schtasks /Change /TN "Microsoft\Windows\Input\TouchpadSyncDataAvailable" /Disable
schtasks /Change /TN "Microsoft\Windows\International\Synchronize Language Settings" /Disable
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Installation" /Disable
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\ReconcileLanguageResources" /Disable
schtasks /Change /TN "Microsoft\Windows\LanguageComponentsInstaller\Uninstallation" /Disable
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /Disable
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /Disable
schtasks /Change /TN "Microsoft\Windows\Management\Provisioning\Cellular" /Disable
schtasks /Change /TN "Microsoft\Windows\Management\Provisioning\Logon" /Disable
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /Disable
schtasks /Change /TN "Microsoft\Windows\Maps\MapsToastTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Maps\MapsUpdateTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /Disable
schtasks /Change /TN "Microsoft\Windows\MUI\LPRemove" /Disable
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable
schtasks /Change /TN "Microsoft\Windows\PushToInstall\Registration" /Disable
schtasks /Change /TN "Microsoft\Windows\Ras\MobilityManager" /Disable
schtasks /Change /TN "Microsoft\Windows\RecoveryEnvironment\VerifyWinRE" /Disable
schtasks /Change /TN "Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /Disable
schtasks /Change /TN "Microsoft\Windows\RetailDemo\CleanupOfflineContent" /Disable
schtasks /Change /TN "Microsoft\Windows\Servicing\StartComponentCleanup" /Disable
schtasks /Change /TN "Microsoft\Windows\SettingSync\NetworkStateChangeTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Setup\SetupCleanupTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Setup\SnapshotCleanupTask" /Disable
schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceAgentTask" /Disable
schtasks /Change /TN "Microsoft\Windows\SpacePort\SpaceManagerTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Speech\SpeechModelDownloadTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization" /Disable
schtasks /Change /TN "Microsoft\Windows\Sysmain\ResPriStaticDbSync" /Disable
schtasks /Change /TN "Microsoft\Windows\Sysmain\WsSwapAssessmentTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Task Manager\Interactive" /Disable
schtasks /Change /TN "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable
schtasks /Change /TN "Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable
schtasks /Change /TN "Microsoft\Windows\Time Zone\SynchronizeTimeZone" /Disable
schtasks /Change /TN "Microsoft\Windows\TPM\Tpm-HASCertRetr" /Disable
schtasks /Change /TN "Microsoft\Windows\TPM\Tpm-Maintenance" /Disable
schtasks /Change /TN "Microsoft\Windows\UPnP\UPnPHostConfig" /Disable
schtasks /Change /TN "Microsoft\Windows\User Profile Service\HiveUploadTask" /Disable
schtasks /Change /TN "Microsoft\Windows\WDI\ResolutionHost" /Disable
schtasks /Change /TN "Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /Disable
schtasks /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Management" /Disable
schtasks /Change /TN "Microsoft\Windows\WOF\WIM-Hash-Validation" /Disable
schtasks /Change /TN "Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /Disable
schtasks /Change /TN "Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /Disable
schtasks /Change /TN "Microsoft\Windows\Workplace Join\Automatic-Device-Join" /Disable
schtasks /Change /TN "Microsoft\Windows\WwanSvc\NotificationTask" /Disable
schtasks /Change /TN "Microsoft\Windows\WwanSvc\OobeDiscovery" /Disable
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTask" /Disable
echo Unnecessary Services and Tasks disabled successfully.
timeout 2 > nul

cls
color 9
echo (PiF) Disabling Windows Update and Store Services and Tasks.
sc stop uhssvc
sc stop upfc
sc stop PushToInstall
sc stop BITS
sc stop InstallService
sc stop uhssvc
sc stop UsoSvc
sc stop wuauserv
sc stop LanmanServer
sc config BITS start= disabled
sc config InstallService start= disabled
sc config uhssvc start= disabled
sc config UsoSvc start= disabled
sc config wuauserv start= disabled
sc config LanmanServer start= disabled
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DoSvc" /v Start /t reg_dword /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\InstallService" /v Start /t reg_dword /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UsoSvc" /v Start /t reg_dword /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv" /v Start /t reg_dword /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v Start /t reg_dword /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BITS" /v Start /t reg_dword /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\upfc" /v Start /t reg_dword /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\uhssvc" /v Start /t reg_dword /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ossrs" /v Start /t reg_dword /d 4 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpdatePeriod" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgrade" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpgradePeriod" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWindowsUpdateAccess" /t REG_DWORD /d "1" /f
schtasks /Change /TN "Microsoft\Windows\InstallService\ScanForUpdates" /Disable
schtasks /Change /TN "Microsoft\Windows\InstallService\ScanForUpdatesAsUser" /Disable
schtasks /Change /TN "Microsoft\Windows\InstallService\SmartRetry" /Disable
schtasks /Change /TN "Microsoft\Windows\InstallService\WakeUpAndContinueUpdates" /Disable
schtasks /Change /TN "Microsoft\Windows\InstallService\WakeUpAndScanForUpdates" /Disable
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Report policies" /Disable
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /Disable
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /Disable
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /Disable
schtasks /Change /TN "Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /Disable
schtasks /Change /TN "Microsoft\Windows\WaaSMedic\PerformRemediation" /Disable
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Scheduled Start" /Disable
echo Windows Update and Store Services and Tasks disabled successfully.
timeout 2 > nul

cls
color D
echo (PiF) Disabling Remote Services and Tasks.
sc config RemoteRegistry start= disabled
sc config RemoteAccess start= disabled
sc config WinRM start= disabled
sc config RmSvc start= disabled
echo Remote Services and Tasks disabled successfully.
timeout 2 > nul

cls
color 9
echo (PiF) Disabling Printer Services and Tasks..
sc config PrintNotify start= disabled
sc config Spooler start= disabled
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /Disable
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /Disable
echo Printer Services and Tasks disabled successfully.
timeout 2 > nul

cls
color D
echo (PiF) Disabling Bluetooth Services and Tasks...
sc config PrintNotify start= disabled
sc config Spooler start= disabled
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /Disable
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /Disable
echo Bluetooth Services and Tasks disabled successfully.
timeout 2 > nul

cls
color 9
echo (PiF) Disabling Wifi Services and Tasks...
sc config NlaSvc start= disabled
sc config LanmanWorkstation start= disabled
schtasks /Change /TN "Microsoft\Windows\WlanSvc\CDSSync" /Disable
schtasks /Change /TN "Microsoft\Windows\WCM\WiFiTask" /Disable
schtasks /Change /TN "Microsoft\Windows\NlaSvc\WiFiTask" /Disable
schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Disable
reg add "HKLM\Software\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /v "NoActiveProbe" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "0" /f
sc config BFE start= demand
sc config Dnscache start= demand
sc config WinHttpAutoProxySvc start= demand
sc config Dhcp start= auto
sc config DPS start= auto
sc config lmhosts start= disabled
sc config nsi start= auto
sc config Wcmsvc start= disabled
sc config Winmgmt start= auto
sc config WlanSvc start= demand
echo Wifi Services and Tasks disabled successfully.
timeout 2 > nul


cls
color D
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                   ██████╗ ██╗███████╗
echo.                                                   ██╔══██╗██║██╔════╝
echo.                                                   ██████╔╝██║█████╗  
echo.                                                   ██╔═══╝ ██║██╔══╝  
echo.                                                   ██║     ██║██║     
echo.                                                   ╚═╝     ╚═╝╚═╝     
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║           (PiF) Tweaks Ran Sucessfully...          ║       
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                          
timeout 2 > nul  

:: (Quaked) App Debloat.
cls
color 9
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.                     █████╗ ██████╗ ██████╗     ██████╗ ███████╗██████╗ ██╗      ██████╗  █████╗ ████████╗
echo.                    ██╔══██╗██╔══██╗██╔══██╗    ██╔══██╗██╔════╝██╔══██╗██║     ██╔═══██╗██╔══██╗╚══██╔══╝
echo.                    ███████║██████╔╝██████╔╝    ██║  ██║█████╗  ██████╔╝██║     ██║   ██║███████║   ██║   
echo.                    ██╔══██║██╔═══╝ ██╔═══╝     ██║  ██║██╔══╝  ██╔══██╗██║     ██║   ██║██╔══██║   ██║   
echo.                    ██║  ██║██║     ██║         ██████╔╝███████╗██████╔╝███████╗╚██████╔╝██║  ██║   ██║   
echo.                    ╚═╝  ╚═╝╚═╝     ╚═╝         ╚═════╝ ╚══════╝╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   
echo. 
echo.                          ╔══════════════════════════════════════════════════════════════════════╗
echo.                          ║                          (Removing)                                  ║
echo.                          ║  All Startup Apps, Extra Bloatware Services, Extra Bloatware tasks   ║
echo.                          ║ GameBarPresenceWriter, Xbox Gaming Service, Mircosoft Edge, OneDrive,║        
echo.                          ║   Logitech, Razor, Armoury Crate, Corsair ICUE, MSI, VisiSonics,     ║
echo.                          ║  AMD Bloat, Realtek, CCleaner, Avast Antivirus, All Mircosoft Apps   ║
echo.                          ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                          
timeout 2 > nul  

cls
chcp 437 >nul
color D
echo (Quaked) Disabling Bloatware Services...
sc config NcbService start=disabled
sc config DeviceAssociationService start=disabled
sc config StorSvc start=disabled
sc config TieringEngineService start=disabled
sc config DPS start=disabled
sc config Themes start=disabled
sc config edgeupdate start=disabled >nul 2>&1
sc config edgeupdatem start=disabled >nul 2>&1
sc config GoogleChromeElevationService start=disabled >nul 2>&1
sc config gupdate start=disabled >nul 2>&1
sc config gupdatem start=disabled >nul 2>&1
sc config logi_lamparray_service start=disabled >nul 2>&1
sc config LGHUBUpdaterService start=disabled >nul 2>&1
sc config SteelSeriesGGUpdateServiceProxy start=disabled >nul 2>&1
sc config RzActionSvc start=disabled >nul 2>&1
sc config RazerElevationService start=disabled >nul 2>&1
sc config RazerGameManagerService start=disabled >nul 2>&1
sc config RazerGameManagerService3 start=disabled >nul 2>&1
sc config RazerSynapseService start=disabled >nul 2>&1
sc config BraveElevationService start=disabled >nul 2>&1
sc config brave start=disabled >nul 2>&1
sc config bravem start=disabled >nul 2>&1
sc config GigabyteUpdateService start=disabled >nul 2>&1
sc config CCleanerBrowserElevationService start=disabled >nul 2>&1
sc config ccleaner start=disabled >nul 2>&1
sc config ccleanerm start=disabled >nul 2>&1
sc config CCleanerPerformanceOptimizerService start=disabled >nul 2>&1
sc config HvHost start=disabled >nul 2>&1
sc config vmickvpexchange start=disabled >nul 2>&1
sc config vmicguestinterface start=disabled >nul 2>&1
sc config vmicshutdown start=disabled >nul 2>&1
sc config vmicheartbeat start=disabled >nul 2>&1
sc config vmicvmsession start=disabled >nul 2>&1
sc config vmicrdv start=disabled >nul 2>&1
sc config vmictimesync start=disabled >nul 2>&1
sc config vmicvss start=disabled >nul 2>&1
echo Extra Bloatware disabled successfully.
timeout 2 > nul

cls
color 9
echo (Quaked) Disabling Intel Services...
sc config NcbService start=disabled >nul 2>&1
sc config jhi_service start=disabled >nul 2>&1
sc config WMIRegistrationService start=disabled >nul 2>&1
sc config "Intel(R) TPM Provisioning Service" start=disabled >nul 2>&1
sc config ipfsvc start=disabled >nul 2>&1
sc config igccservice start=disabled >nul 2>&1
sc config cplspcon start=disabled >nul 2>&1
echo Intel Bloat disabled successfully.
timeout 2 > nul

cls
color D
echo (Quaked) Disabling AMD Services...
sc config AMD Crash Defender Service start=disabled >nul 2>&1
sc config AMD External Events Utility start=disabled >nul 2>&1
sc config AUEPLauncher start=disabled >nul 2>&1
echo AMD Bloat disabled successfully.
timeout 2 > nul

cls
color 9
echo (Quaked) Disabling Extra Tasks...
schtasks /Change /TN "GoogleUpdateTaskMachineCore{9C99738B-B026-4A33-A16D-7CCD7650D527}" /Disable >nul 2>&1
schtasks /Change /TN "GoogleUpdateTaskMachineUA{2E0C9FAD-7C87-42A8-8EFF-986A5662B894}" /Disable >nul 2>&1
schtasks /Change /TN "Opera GX scheduled Autoupdate 1711926802" /Disable >nul 2>&1
schtasks /Change /TN "BraveSoftwareUpdateTaskMachineCore{A8A54493-B843-4D11-BA1F-30C26E9F10BE}" /Disable >nul 2>&1
schtasks /Change /TN "BraveSoftwareUpdateTaskMachineUA{FF1E0511-D7AF-4DB6-8A41-DC39EA60EC93}" /Disable >nul 2>&1
schtasks /Change /TN "CCleaner Update" /Disable >nul 2>&1
schtasks /Change /TN "CCleanerCrashReporting" /Disable >nul 2>&1
schtasks /Change /TN "CCleanerUpdateTaskMachineCore" /Disable >nul 2>&1
schtasks /Change /TN "CCleanerUpdateTaskMachineUA" /Disable >nul 2>&1
schtasks /Change /TN "Microsoft\Windows\capabilityaccessmanager" /Disable
schtasks /Change /TN "Microsoft\Windows\Setup\SetupCleanupTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Setup\SnapshotCleanupTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefreshTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\ThemesSyncedImageDownload" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\UpdateUserPictureTask" /Disable
schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319" /Disable
schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64" /Disable
schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64 Critical" /Disable
schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 Critical" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\SdbinstMergeDbTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Printing\PrintJobCleanupTask" /Disable
echo Extra tasks Deleting successfully.
timeout 2 > nul

cls
color D
echo (Quaked) Deleting Extra Tasks...
schtasks /Delete /TN "GoogleUpdateTaskMachineCore{9C99738B-B026-4A33-A16D-7CCD7650D527}" /F >nul 2>&1
schtasks /Delete /TN "GoogleUpdateTaskMachineUA{2E0C9FAD-7C87-42A8-8EFF-986A5662B894}" /F >nul 2>&1
schtasks /Delete /TN "Opera GX scheduled Autoupdate 1711926802" /F >nul 2>&1
schtasks /Delete /TN "BraveSoftwareUpdateTaskMachineCore{A8A54493-B843-4D11-BA1F-30C26E9F10BE}" /F >nul 2>&1
schtasks /Delete /TN "BraveSoftwareUpdateTaskMachineUA{FF1E0511-D7AF-4DB6-8A41-DC39EA60EC93}" /F >nul 2>&1
schtasks /Delete /TN "CCleaner Update" /F >nul 2>&1
schtasks /Delete /TN "CCleanerCrashReporting" /F >nul 2>&1
schtasks /Delete /TN "CCleanerUpdateTaskMachineCore" /F >nul 2>&1
schtasks /Delete /TN "CCleanerUpdateTaskMachineUA" /F >nul 2>&1
echo Extra tasks Deleting successfully.
timeout 2 > nul

@echo off
cls
color 9
echo (Quaked) Disabling all startup apps...
echo --------------------------------------
for /f "tokens=2 delims==" %%I in ('wmic startup get caption /format:list') do (
    echo Disabling %%I
    reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "%%I" /t REG_SZ /d "" /f >nul 2>&1
)
timeout 2 > nul
echo --------------------------------------
echo Disabling all startup programs...
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /f 
reg delete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunNotification" /f
reg delete "HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /f 
rd /s /q "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"
echo --------------------------------------
echo Readding Startup Regs
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /f 
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunNotification" /f
reg add "HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Run" /f
mkdir "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"   
echo All startup programs disabled.
timeout 2 > nul

@echo off
cls
color D
echo (Quaked) Removing GameBarPresenceWriter...
CD /D %HOMEDRIVE%%HOMEPATH%\Desktop
echo %CD%

REM ************ Main process *****************

set "fileToDelete=%SystemRoot%\System32\GameBarPresenceWriter.exe"

if exist "%fileToDelete%" (
    echo *** Taking ownership of the file ***
    takeown /F "%fileToDelete%"
    
    echo *** Adjusting permissions ***
    icacls "%fileToDelete%" /grant administrators:F

    echo *** Removing Gamebar Presence Writer ***
    del "%fileToDelete%" /s /f /q
    echo File deleted successfully.
) else (
    echo File not found: %fileToDelete%
)

timeout 2 > nul

cls
color 9
echo (Quaked) Removing Xbox Gaming Service... 
powershell -command "get-appxpackage Microsoft.GamingServices | remove-AppxPackage -allusers"
echo Xbox Gaming Service deleted successfully.
timeout 2 > nul

@echo off
cls
color 9
echo (Quaked) Removing Microsoft Edge...
echo Stopping Edge tasks...
taskkill /f /im msedge.exe >nul 2>&1
taskkill /f /im msedge.exe /fi "IMAGENAME eq msedge.exe" >nul 2>&1
taskkill /f /im msedge.exe /fi "IMAGENAME eq msedge.exe" >nul 2>&1

echo Deleting Microsoft Edge directories...

:: Delete Edge directory
rd /s /q "C:\Program Files (x86)\Microsoft\Edge" >nul 2>&1

:: Delete EdgeCore directory
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeCore" >nul 2>&1

:: Delete EdgeUpdate directory
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeUpdate" >nul 2>&1

:: Delete EdgeWebView directory
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeWebView" >nul 2>&1

:: Delete Temp directory
rd /s /q "C:\Program Files (x86)\Microsoft\Temp" >nul 2>&1

echo Deleting Microsoft Edge shortcuts...

:: Delete desktop shortcut
del "C:\Users\Public\Desktop\Microsoft Edge.lnk" >nul 2>&1

:: Delete start menu shortcut
del "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk" >nul 2>&1

:: Delete taskbar shortcut
del "%APPDATA%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Microsoft Edge.lnk" >nul 2>&1

echo Microsoft Edge deleted successfully.
timeout 2 > nul

@echo off
cls
color D
echo (Quaked) Removing OneDrive...
echo Kill OneDrive process
taskkill.exe /F /IM "OneDrive.exe"
taskkill.exe /F /IM "explorer.exe"

echo Remove OneDrive
winget uninstall --silent --accept-source-agreements Microsoft.OneDrive

echo Remove OneDrive from explorer sidebar
reg add "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f

echo Removing run hook for new users
reg load "hku\Default" "C:\Users\Default\NTUSER.DAT"
reg delete "HKEY_USERS\Default\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
reg unload "hku\Default"

echo Removing start menu entry
del /f /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk"

echo Removing scheduled task
schtasks /delete /tn "OneDrive*" /f

echo Restarting Explorer...
start explorer.exe
echo OneDrive deleted successfully.
timeout 2 > nul

@echo off
cls
color 9
echo (Quaked) Removing Remote Desktop Connection...
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.RemoteDesktop_10.2.1810.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage" >nul 2>&1
CD /D %SystemRoot%\System32
echo %CD%

REM ************ Main process *****************

set "fileToDelete=%SystemRoot%\System32\mstsc.exe"

if exist "%fileToDelete%" (
    echo *** Taking ownership of the file ***
    takeown /F "%fileToDelete%"
    
    echo *** Adjusting permissions ***
    icacls "%fileToDelete%" /grant administrators:F

    echo *** Removing mstsc.exe ***
    del "%fileToDelete%" /s /f /q
    echo File deleted successfully.
) else (
    echo File not found: %fileToDelete%
)

timeout 2 > nul

@echo off
cls
color D
echo (Quaked) Removing Widget and WidgetService...
echo Closing WidgetService and Widgets.
taskkill /F /IM WidgetService.exe >nul 2>&1
taskkill /F /IM Widgets.exe >nul 2>&1
echo Uninstalling Windows web experience Pack...
winget uninstall --silent --accept-source-agreements "Windows web experience Pack" >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\NewsAndInterests" /v "AllowNewsAndInterests" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Dsh" /v "AllowNewsAndInterests" /t REG_DWORD /d 0 /f
CD /D "C:\Program Files\WindowsApps\MicrosoftWindows.Client.WebExperience_424.1301.450.0_x64__cw5n1h2txyewy\Dashboard" >nul 2>&1
echo echo %CD% >nul 2>&1

REM ************ Main process *****************

set "file1ToDelete=WidgetService.exe"
set "file2ToDelete=Widgets.exe"

if exist "%file1ToDelete%" (
    echo *** Taking ownership of %file1ToDelete% ***
    takeown /F "%file1ToDelete%"
    
    echo *** Adjusting permissions for %file1ToDelete% ***
    icacls "%file1ToDelete%" /grant administrators:F

    echo *** Removing %file1ToDelete% ***
    del "%file1ToDelete%" /s /f /q
    echo %file1ToDelete% deleted successfully.
) else (
    echo File not found: %file1ToDelete% >nul 2>&1
)

if exist "%file2ToDelete%" (
    echo *** Taking ownership of %file2ToDelete% ***
    takeown /F "%file2ToDelete%"
    
    echo *** Adjusting permissions for %file2ToDelete% ***
    icacls "%file2ToDelete%" /grant administrators:F

    echo *** Removing %file2ToDelete% ***
    del "%file2ToDelete%" /s /f /q
    echo %file2ToDelete% deleted successfully.
) else (
    echo File not found: %file2ToDelete% >nul 2>&1
)

timeout 2 > nul

@echo off
cls
color 9
echo (Quaked) Removing Smartscreen...
CD /D %HOMEDRIVE%%HOMEPATH%\Desktop
echo %CD%

REM ************ Main process *****************

set "smartscreenFileToDelete1=C:\Windows\System32\smartscreen.exe"
set "smartscreenFileToDelete2=C:\Windows\SystemApps\Microsoft.Windows.AppRep.ChxApp_cw5n1h2txyewy\CHXSmartScreen.exe"

REM Deleting Smartscreen.exe if exists
if exist "%smartscreenFileToDelete1%" (
    echo *** Taking ownership of the file ***
    takeown /F "%smartscreenFileToDelete1%"
    
    echo *** Adjusting permissions ***
    icacls "%smartscreenFileToDelete1%" /grant administrators:F

    echo *** Removing Smartscreen.exe from System32 ***
    del "%smartscreenFileToDelete1%" /f /q
    echo File deleted successfully.
) else (
    echo File not found: %smartscreenFileToDelete1%
)

REM Deleting CHXSmartScreen.exe if exists
if exist "%smartscreenFileToDelete2%" (
    echo *** Taking ownership of the file ***
    takeown /F "%smartscreenFileToDelete2%"
    
    echo *** Adjusting permissions ***
    icacls "%smartscreenFileToDelete2%" /grant administrators:F

    echo *** Removing CHXSmartScreen.exe from SystemApps ***
    del "%smartscreenFileToDelete2%" /f /q
    echo File deleted successfully.
) else (
    echo File not found: %smartscreenFileToDelete2%
)

timeout 2 > nul

@echo off
cls
color D
echo (Quaked) Removing LockApp...
CD /D %HOMEDRIVE%%HOMEPATH%\Desktop
echo %CD%

REM ************ Main process *****************

set "lockAppFileToDelete=C:\Windows\SystemApps\Microsoft.LockApp_cw5n1h2txyewy\LockApp.exe"

REM Deleting LockApp.exe if exists
if exist "%lockAppFileToDelete%" (
    echo *** Taking ownership of the file ***
    takeown /F "%lockAppFileToDelete%"
    
    echo *** Adjusting permissions ***
    icacls "%lockAppFileToDelete%" /grant administrators:F

    echo *** Removing LockApp.exe from SystemApps ***
    del "%lockAppFileToDelete%" /f /q
    echo File deleted successfully.
) else (
    echo File not found: %lockAppFileToDelete%
)

timeout 2 > nul

cls
color 9
echo (Quaked) Removing Windows Search and Installing alternative called "Open Shell Menu"...
echo.
powershell -Command "Write-Host '(Recommended)' -ForegroundColor White -BackgroundColor Red" 
echo Do you want to remove Windows Search?
echo Leads to a reduction of 4-6 processes, aswell a installation of a alternative called "Open Shell Menu" that's lighter!
echo.
set /p choice=Enter (Y/N): 

if /i "%choice%"=="Y" (
    echo Removing Windows Search! 
    timeout 1 > nul
    goto :SearchRemover
) else if /i "%choice%"=="N" ( 
    echo Skipping Search Removal and Open Shell Menu Install! 
    timeout 2 > nul
    goto :SkipSearchRemover
)

:SearchRemover
cls
echo (Quaked) Removing Search...
echo.
CD /D %HOMEDRIVE%%HOMEPATH%\Desktop
echo %CD%

REM ************ Main process *****************

set "SearchFileToDelete1=C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHost.exe"
set "SearchFileToDelete2=C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\StartMenuExperienceHost.exe"
set "SearchFileToDelete3=C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy\ShellExperienceHost.exe"
set "SearchFileToDelete4=C:\Windows\System32\taskhostw.exe"

REM Deleting SearchHost.exe if exists
if exist "%SearchFileToDelete1%" (
    echo *** Taking ownership of the file ***
    takeown /F "%SearchFileToDelete1%"
    
    echo *** Adjusting permissions ***
    icacls "%SearchFileToDelete1%" /grant administrators:F

    echo *** Removing SearchHost.exe ***
    del "%SearchFileToDelete1%" /f /q
    echo File deleted successfully.
) else (
    echo File not found: %SearchFileToDelete1%
)

REM Deleting StartMenuExperienceHost.exe if exists
if exist "%SearchFileToDelete2%" (
    echo *** Taking ownership of the file ***
    takeown /F "%SearchFileToDelete2%"
    
    echo *** Adjusting permissions ***
    icacls "%SearchFileToDelete2%" /grant administrators:F

    echo *** Removing StartMenuExperienceHost.exe ***
    del "%SearchFileToDelete2%" /f /q
    echo File deleted successfully.
) else (
    echo File not found: %SearchFileToDelete2%
)

REM Deleting ShellExperienceHost.exe if exists
if exist "%SearchFileToDelete3%" (
    echo *** Taking ownership of the file ***
    takeown /F "%SearchFileToDelete3%"
    
    echo *** Adjusting permissions ***
    icacls "%SearchFileToDelete3%" /grant administrators:F

    echo *** Removing ShellExperienceHost.exe ***
    del "%SearchFileToDelete3%" /f /q
    echo File deleted successfully.
) else (
    echo File not found: %SearchFileToDelete3%
)

REM Deleting taskhostw.exe if exists
if exist "%SearchFileToDelete4%" (
    echo *** Taking ownership of the file ***
    takeown /F "%SearchFileToDelete4%"
    
    echo *** Adjusting permissions ***
    icacls "%SearchFileToDelete4%" /grant administrators:F

    echo *** Removing taskhostw.exe ***
    del "%SearchFileToDelete4%" /f /q
    echo File deleted successfully.
) else (
    echo File not found: %SearchFileToDelete4%
)

timeout 2 > nul

cls
color D
echo (Quaked) Installing Alternative Search/Open Shell Menu...
chcp 437 >nul
powershell -Command "Write-Host 'Needed if you''d like to Search things!' -ForegroundColor White -BackgroundColor Red" 
set "fileURL=https://github.com/Open-Shell/Open-Shell-Menu/releases/download/v4.4.191/OpenShellSetup_4_4_191.exe"
set "fileName=OpenShellSetup_4_4_191.exe"
set "fileURL2=https://github.com/QuakedK/Downloads/raw/main/Menu_Settings_1.xml"
set "fileName2=Menu_Settings_1.xml"

set "downloadsFolder=%USERPROFILE%\Downloads"
chcp 65001 >nul 2>&1
echo.
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝

curl -s -L "%fileURL%" -o "%downloadsFolder%\%fileName%"
curl -s -L "%fileURL2%" -o "%downloadsFolder%\%fileName2%"
if exist "%downloadsFolder%\%fileName%" (
    echo Open Shell Menu and config file installed!
    echo.
    echo Starting Open Shell Menu...
    timeout 1 > nul
    cls
    start "" "%downloadsFolder%\%fileName%"
    chcp 437 >nul
    powershell -Command "Write-Host 'Do not skip if you want to Search things' -ForegroundColor White -BackgroundColor Red" 
    echo.
    echo Click "Next", Then "I accept", then "Next" again.
    echo Click on the arrow next/on the left of "Classic Explorer" then click the "Red X"
    echo Click on the arrow next/on the left of "Open-Shell Update" then click the "Red X"
    echo Then click "Next" again and "install" the "Finsh"
    echo.
    echo Now right click your "windows icon" then click "Settings"
    echo Then click "Backup" and "Load from XML File" 
    echo Now Navigate to your "Downloads Folder" and Select "Menu_Settings_1.xml" the click "OK"
    pause
) else (
    echo Open Shell Menu download failed.
    echo Skipping!
    timeout 1 > nul
)

:SkipSearchRemover
cls
color 9
echo (Quaked) Removing Logitech and Razor Apps...

echo Terminating processes associated with LGHUB...
taskkill /f /im lghub.exe >nul 2>&1
taskkill /f /im lghub_agent.exe >nul 2>&1
taskkill /f /im lghub_updater.exe >nul 2>&1
taskkill /f /im lghub_system_tray.exe >nul 2>&1

echo Stopping Logitech-related services...
net stop "LGHUBUpdaterService" >nul 2>&1

echo Disabling Logitech-related services...
sc config LGHUBUpdaterService start=disabled >nul 2>&1

echo Deleting LGHUB directory...
rd /s /q "C:\Program Files\LGHUB" >nul 2>&1
rd /s /q "C:\Program Files\Logitech" >nul 2>&1
rd /s /q "C:\Program Files\Logi" >nul 2>&1
rd /s /q "C:\ProgramData\Logishrd" >nul 2>&1
rd /s /q "C:\ProgramData\LGHUB" >nul 2>&1
rd /s /q "%USERPROFILE%\AppData\Local\LGHUB" >nul 2>&1
rd /s /q "%USERPROFILE%\AppData\Roaming\G HUB" >nul 2>&1
rd /s /q "%USERPROFILE%\AppData\Roaming\lghub" >nul 2>&1

echo Terminating processes associated with Razer...
taskkill /f /im CefSharp.BrowserSubprocess.exe >nul 2>&1
taskkill /f /im CortexLauncherService.exe >nul 2>&1
taskkill /f /im Razer Central.exe >nul 2>&1
taskkill /f /im RazerCentralService.exe >nul 2>&1
taskkill /f /im RazerCortex.exe >nul 2>&1
taskkill /f /im RazerAppEngine.exe >nul 2>&1
taskkill /f /im RzEngineMon.exe >nul 2>&1
taskkill /f /im RazerAxon.exe >nul 2>&1
taskkill /f /im RazerAxon.Player.exe >nul 2>&1
taskkill /f /im RazerAxon.Reporter.exe >nul 2>&1
taskkill /f /im GameManagerService.exe >nul 2>&1
taskkill /f /im GameManagerServiceStartup.exe >nul 2>&1
taskkill /f /im CrashReporter.exe >nul 2>&1
taskkill /f /im GameManagerService3.exe >nul 2>&1
taskkill /f /im GMSServiceRegister.exe >nul 2>&1
taskkill /f /im RazerCentral.exe >nul 2>&1
taskkill /f /im RazerUpdater.exe >nul 2>&1
taskkill /f /im RazerCentralService.exe >nul 2>&1
taskkill /f /im "Razer Synapse 3.exe" >nul 2>&1
taskkill /f /im "Razer Synapse Service UI Start.exe" >nul 2>&1
taskkill /f /im "Razer Synapse Service.exe" >nul 2>&1
taskkill /f /im "Razer Synapse Service Process.exe" >nul 2>&1

echo Stopping Razer-related services...
net stop "RzActionSvc" >nul 2>&1
net stop "Razer Elevation Service" >nul 2>&1
net stop "Razer Game Manager Service" >nul 2>&1
net stop "Razer Game Manager Service 3" >nul 2>&1
net stop "Razer Synapse Service" >nul 2>&1

echo Disabling Razer-related services...
sc config RzActionSvc start=disabled >nul 2>&1
sc config Razer Elevation Service start=disabled >nul 2>&1
sc config Razer Game Manager Service start=disabled >nul 2>&1
sc config Razer Game Manager Service 3 start=disabled >nul 2>&1
sc config Razer Synapse Service start=disabled >nul 2>&1

echo Deleting Razer directory...
taskkill /f /im RazerCortex.exe >nul 2>&1
taskkill /f /im CefSharp.BrowserSubprocess.exe >nul 2>&1
taskkill /f /im Razer Central.exe >nul 2>&1
taskkill /f /im RazerCentralService.exe >nul 2>&1

rd /s /q "C:\Program Files (x86)\Razer" >nul 2>&1
rd /s /q "C:\Program Files\Razer" >nul 2>&1

echo Logitech and Razor Apps deleted successfully.
timeout 2 > nul

cls
@echo off
color D
chcp 437 >nul 
echo (Quaked) Removing Asus Armoury Crate...

echo Terminating processes associated with Armoury Crate...
taskkill /f /im Aac3572DramHal_x86.exe >nul 2>&1
taskkill /f /im AacKingstonDramHal_x86.exe >nul 2>&1
taskkill /f /im AcPowerNotification.exe >nul 2>&1
taskkill /f /im ArmouryCrate.Service.exe >nul 2>&1
taskkill /f /im ArmouryCrate.UserSessionHelper.exe >nul 2>&1
taskkill /f /im ArmourySwAgent.exe >nul 2>&1
taskkill /f /im AsusCertService.exe >nul 2>&1
taskkill /f /im extensionCardHal_x86.exe >nul 2>&1
taskkill /f /im atkexComSvc.exe >nul 2>&1
taskkill /f /im ROGLiveService.exe >nul 2>&1

echo Stopping Armoury Crate-related services...
net stop "ArmouryCrateService" >nul 2>&1
net stop "LightingService" >nul 2>&1
net stop "AsusCertService" >nul 2>&1
net stop "asComSvc" >nul 2>&1
net stop "asus" >nul 2>&1
net stop "asusm" >nul 2>&1
net stop "AsusROGLSLService" >nul 2>&1
net stop "ROG Live Service" >nul 2>&1

echo Disabling Armoury Crate-related services...
sc config ArmouryCrateService start=disabled >nul 2>&1
sc config LightingService start=disabled >nul 2>&1
sc config AsusCertService start=disabled >nul 2>&1
sc config asComSvc start=disabled >nul 2>&1
sc config asus start=disabled >nul 2>&1
sc config asusm start=disabled >nul 2>&1
sc config AsusROGLSLService start=disabled >nul 2>&1
sc config ROG Live Service start=disabled >nul 2>&1

echo Deleting Armoury Crate directory...
rd /s /q "C:\Program Files\ASUS" >nul 2>&1
rd /s /q "C:\Program Files (x86)\ASUS" >nul 2>&1
rd /s /q "C:\Program Files (x86)\LightingService" >nul 2>&1
rd /s /q "C:\Program Files\WindowsApps\B9ECED6F.ArmouryCrate_5.8.9.0_x64__qmba6cd70vzyy" >nul 2>&1
rd /s /q "C:\Program Files\WindowsApps\ASUSAmbientHAL64_1.0.0.2_neutral__gsg7p0crx7n6a" >nul 2>&1
rd /s /q "C:\Program Files\WindowsApps\B9ECED6F.ArmouryCrate5.8.9.0_neutral~_qmba6cd70vzyy" >nul 2>&1
rd /s /q "C:\Program Files\WindowsApps\B9ECED6F.AURACreator_3.7.6.0_x64__qmba6cd70vzyy" >nul 2>&1
rd /s /q "C:\Program Files\WindowsApps\B9ECED6F.AURACreator3.7.6.0_neutral~_qmba6cd70vzyy" >nul 2>&1

echo Asus Armoury Crate deleted successfully.
timeout 2 > nul

cls
color 9
echo (Quaked) Removing Corsair Bloatware...

echo Terminating processes associated with Corsair Bloatware...
taskkill /f /im Corsair.Service.CpuIdRemote64.exe >nul 2>&1
taskkill /f /im Corsair.Service.exe >nul 2>&1
taskkill /f /im CorsairCpuIdService.exe >nul 2>&1
taskkill /f /im CueLLAccessService.exe >nul 2>&1
taskkill /f /im ICEsoundService64.exe >nul 2>&1

echo Stopping Corsair Bloatware-related services...
net stop "CorsairCpuIdService" >nul 2>&1
net stop "CorsairDeviceListerService" >nul 2>&1
net stop "iCUEUpdateService" >nul 2>&1
net stop "CorsairLLAService" >nul 2>&1
net stop "CorsairService" >nul 2>&1
net stop "ICEsoundService" >nul 2>&1

echo Disabling Corsair Bloatware-related services...
sc config CorsairCpuIdService start=disabled >nul 2>&1
sc config CorsairDeviceListerService start=disabled >nul 2>&1
sc config iCUEUpdateService start=disabled >nul 2>&1
sc config CorsairLLAService start=disabled >nul 2>&1
sc config CorsairService start=disabled >nul 2>&1
sc config ICEsoundService start=disabled >nul 2>&1

echo Deleting Corsair Bloatware directory...
rd /s /q "C:\Program Files\Corsair\Corsair iCUE5 Software\clink\Corsair.Service.CpuIdRemote64.exe" >nul 2>&1
rd /s /q "C:\Program Files\Corsair\Corsair iCUE5 Software\clink\Corsair.Service.exe" >nul 2>&1
rd /s /q "C:\Program Files\Corsair\Corsair iCUE5 Software\CorsairCpuIdService.exe" >nul 2>&1
rd /s /q "C:\Program Files\Corsair\Corsair iCUE5 Software\CueLLAccessService.exe" >nul 2>&1
rd /s /q "C:\Windows\System32\ICEsoundService64.exe" >nul 2>&1
rd /s /q "C:\Program Files\Corsair" >nul 2>&1
rd /s /q "C:\Program Files (x86)\Corsair" >nul 2>&1

echo Corsair Bloatware deleted successfully.
timeout 2 > nul

cls
color D
echo (Quaked) Removing Msi Bloatware...

echo Terminating processes associated with Msi Bloatware...
taskkill /f /im LightKeeperService.exe >nul 2>&1
taskkill /f /im MSI_Central_Service.exe >nul 2>&1
taskkill /f /im MSIAPService.exe >nul 2>&1
taskkill /f /im MSIService.exe >nul 2>&1
taskkill /f /im MSI.CentralServer.exe >nul 2>&1
taskkill /f /im MSI_Companion_Service.exe >nul 2>&1
taskkill /f /im Mystic_Light_Service.exe >nul 2>&1
taskkill /f /im MSI.CentralServer.exe >nul 2>&1
taskkill /f /im MSI.CentralServer.exe >nul 2>&1

echo Stopping Msi Bloatware-related services...
net stop "MSI_Central_Service" >nul 2>&1
net stop "MSI_Companion_Service" >nul 2>&1
net stop "Mystic_Light_Service" >nul 2>&1

echo Disabling Msi Bloatware-related services...
sc config MSI_Central_Service start=disabled >nul 2>&1
sc config MSI_Companion_Service start=disabled >nul 2>&1
sc config Mystic_Light_Service start=disabled >nul 2>&1

echo Deleting Msi Bloatware directory...
rd /s /q "C:\Program Files (x86)\MSI\One Dragon Center\Mystic_Light\LightKeeperService.exe" >nul 2>&1
rd /s /q "C:\Program Files (x86)\MSI\One Dragon Center\MSI_Central_Service.exe" >nul 2>&1
rd /s /q "C:\Program Files (x86)\MSI\MSI NBFoundation Service\MSIAPService.exe" >nul 2>&1
rd /s /q "C:\Windows\SysWOW64\MSIService.exe" >nul 2>&1
rd /s /q "C:\Program Files (x86)\MSI\One Dragon Center\MSI.CentralServer.exe" >nul 2>&1
rd /s /q "C:\Program Files (x86)\MSI\One Dragon Center\Game_Summary\MSI_Companion_Service.exe" >nul 2>&1
rd /s /q "C:\Program Files (x86)\MSI\One Dragon Center\Mystic_Light\Mystic_Light_Service.exe" >nul 2>&1
rd /s /q "C:\Program Files (x86)\MSI" >nul 2>&1
rd /s /q "C:\Program Files\MSI" >nul 2>&1

echo Msi Bloatware deleted successfully.
timeout 2 > nul

cls
color 9
echo (Quaked) Removing VisiSonics...

echo Terminating processes associated with VisiSonics...
taskkill /f /im VSHelper.exe >nul 2>&1
taskkill /f /im VSSrv.exe >nul 2>&1

echo Stopping VisiSonics-related services...
net stop "VSSrv" >nul 2>&1

echo Disabling VisiSonics-related services...
sc config VSSrv start=disabled >nul 2>&1

echo Deleting VisiSonics directory...
rd /s /q "C:\Windows\System32\VSHelper.exe" >nul 2>&1
rd /s /q "C:\Windows\System32\VSSrv.exe" >nul 2>&1

echo VisiSonics deleted successfully.
timeout 2 > nul

cls
color D
echo (Quaked) Removing AMD Bloat...

echo Terminating processes associated with AMD Bloat...
taskkill /f /im amdfendrsr.exe >nul 2>&1
taskkill /f /im atieclxx.exe >nul 2>&1
taskkill /f /im atiesrxx.exe >nul 2>&1
taskkill /f /im AUEPMaster.exe >nul 2>&1

echo Stopping AMD Bloat-related services...
net stop "AMD Crash Defender Service" >nul 2>&1
net stop "AMD External Events Utility" >nul 2>&1
net stop "AUEPLauncher" >nul 2>&1

echo Disabling AMD Bloat-related services...
echo.
echo Oops already did!

echo Deleting AMD Bloat...
rd /s /q "C:\Windows\System32\amdfendrsr.exe" >nul 2>&1
rd /s /q "C:\Windows\System32\DriverStore\FileRepository\u0390451.inf_amd64_39377efdd62734d1\B390182\atieclxx.exe" >nul 2>&1
rd /s /q "C:\Windows\System32\DriverStore\FileRepository\u0390451.inf_amd64_39377efdd62734d1\B390182\atiesrxx.exe" >nul 2>&1
rd /s /q "C:\Program Files\AMD\Performance Profile Client\AUEPMaster.exe" >nul 2>&1

echo AMD Bloat deleted successfully.
timeout 2 > nul

cls
color 9
echo (Quaked) Removing Realtek Audio Bloatware...

echo Terminating processes associated with Realtek Audio Bloatware...
taskkill /f /im RtkAudUService64.exe >nul 2>&1

echo Stopping Realtek Audio Bloatware-related services...
net stop "RtkAudioUniversalService" >nul 2>&1

echo Disabling Realtek Audio Bloatware-related services...
sc config RtkAudioUniversalService start=disabled >nul 2>&1

echo Deleting Realtek Audio Bloatware...
rd /s /q "C:\Windows\System32\DriverStore\FileRepository\realtekservice.inf_amd64_af49968a824c7864\RtkAudUService64.exe" >nul 2>&1
rd /s /q "C:\Windows\System32\DriverStore\FileRepository\realtekservice.inf_amd64_1803724721d1a34c\RtkAudUService64.exe" >nul 2>&1
rd /s /q "C:\Windows\System32\DriverStore\FileRepository\realtekservice.inf_amd64_af49968a824c7864" >nul 2>&1
rd /s /q "C:\Windows\System32\DriverStore\FileRepository\realtekservice.inf_amd64_1803724721d1a34c" >nul 2>&1

echo Realtek Audio Bloatware deleted successfully.
timeout 2 > nul

cls
@echo off
color D
echo (Quaked) Removing CCleaner...

echo Terminating processes associated with CCleaner...
taskkill /f /im CCleaner64.exe >nul 2>&1
taskkill /f /im CCleanerPerformanceOptimizerService.exe >nul 2>&1
taskkill /f /im CCleanerBrowser.exe >nul 2>&1

echo Deleting CCleaner directory...
rd /s /q "C:\Program Files\CCleaner" >nul 2>&1
rd /s /q "C:\Program Files (x86)\CCleaner Browser" >nul 2>&1

echo CCleaner deleted successfully.
timeout 2 > nul

cls
@echo off
color 9
echo (Quaked) Removing Avast Antivirus...

echo Terminating processes associated with Avast Antivirus...
taskkill /f /im AvastUI.exe >nul 2>&1
taskkill /f /im aswToolsSvc.exe >nul 2>&1
taskkill /f /im aswEngSrv.exe >nul 2>&1
taskkill /f /im wsc_proxy.exe >nul 2>&1
taskkill /f /im AvastSvc.exe >nul 2>&1
taskkill /f /im aswidsagent.exe >nul 2>&1

echo Stopping Avast Antivirus-related services...
net stop "avast! Antivirus" >nul 2>&1
net stop "avast" >nul 2>&1
net stop "avastm" >nul 2>&1
net stop "AvastSecureBrowserElevationService" >nul 2>&1
net stop "avast! Tools" >nul 2>&1
net stop "AvastWscReporter" >nul 2>&1

echo Disabling Avast Antivirus-related services...
sc config avast! Antivirus start=disabled >nul 2>&1
sc config avast start=disabled >nul 2>&1
sc config avastm start=disabled >nul 2>&1
sc config AvastSecureBrowserElevationService start=disabled >nul 2>&1
sc config avast! Tools start=disabled >nul 2>&1
sc config AvastWscReporter start=disabled >nul 2>&1

echo Deleting Avast Antivirus directory...
rd /s /q "C:\Program Files\Avast Software\Avast" >nul 2>&1
rd /s /q "C:\Program Files (x86)\AVAST Software" >nul 2>&1

echo Avast Antivirus deleted successfully.
timeout 2 > nul

cls
color D
echo (Quaked) Removing Gigabtye Bloatware

echo Terminating processes associated with Gigabtye...
taskkill /f /im spd.exe >nul 2>&1
taskkill /f /im EasyTuneEngineService.exe >nul 2>&1
taskkill /f /im GraphicsCardEngine.exe >nul 2>&1

echo Stopping Gigabtye-related services...
net stop "cFosSpeedS" >nul 2>&1
net stop "GigabyteUpdateService" >nul 2>&1

echo Disabling Gigabtye-related services...
sc config cFosSpeedS start=disabled >nul 2>&1
sc config GigabyteUpdateService start=disabled >nul 2>&1

echo Deleting Gigabtye directory...
rd /s /q "C:\Program Files\cFosSpeed" >nul 2>&1
rd /s /q "C:\Program Files\GIGABYTE\Control Center\Lib\GBT_VGA\Service" >nul 2>&1
rd /s /q "C:\Program Files (x86)\Gigabyte\EasyTuneEngineService" >nul 2>&1

echo Gigabtye Bloatware deleted successfully.
timeout 2 > nul

cls
color 9
echo (Quaked) Removing Random Bloatware...

echo Terminating processes associated with Random Bloatware...
taskkill /f /im AppleMobileDeviceService.exe >nul 2>&1
taskkill /f /im UserOOBEBroker.exe >nul 2>&1
taskkill /f /im SecurityHealthService.exe >nul 2>&1

echo Stopping Random Bloatware-related services...
net stop "Apple Mobile Device Service" >nul 2>&1

echo Disabling Random Bloatware Services...
sc config ose64 start=disabled >nul 2>&1
sc config Microsoft Update Health Service start=disabled >nul 2>&1

echo Deleting Random Bloatware...
rd /s /q "C:\Program Files\Common Files\Apple\Mobile Device Support\AppleMobileDeviceService.exe" >nul 2>&1
rd /s /q "C:\Windows\System32\oobe\UserOOBEBroker.exe" >nul 2>&1
rd /s /q "C:\Windows\System32\SecurityHealthService.exe" >nul 2>&1

echo Random Bloatware deleted successfully.
timeout 2 > nul

:: (Quaked) Mircosoft Apps Remover.
@echo off
Cls
color D
echo.                                          (Removing Mircosoft Apps/Bloatware)
echo.                                       This cycles through over 100 lines of code
echo.                                             and will likely take a while.
echo. 
chcp 437 >nul
powershell -Command "Write-Host 'Reminder, will take a while' -ForegroundColor White -BackgroundColor Red"  
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *3DBuilder* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Cortana* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Getstarted* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *WindowsAlarms* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *WindowsCamera* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *bing* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *MicrosoftOfficeHub* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *OneNote* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *WindowsPhone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *photos* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *SkypeApp* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *solit* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *WindowsSoundRecorder* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *zune* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *WindowsCalculator* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *WindowsMaps* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Sway* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *CommsPhone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *ConnectivityStore* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.BingSports* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.BingNews* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.BingFinance* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.HEIFImageExtension* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.VP9VideoExtensions* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WebMediaExtensions* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WebpImageExtension* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Office.OneNote* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Office.Sway* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.StorePurchaseApp* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Xbox.TCUI* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.XboxGamingOverlay* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.XboxGameOverlay* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.XboxIdentityProvider* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsPhone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsPhone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsPhone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Windows.Phone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.CommsPhone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Appconnector* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.MinecraftUWP* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Wallet* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsCalculator* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.GroupMe10* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *king.com.CandyCrushSaga* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *king.com.CandyCrushSodaSaga* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *ShazamEntertainmentLtd.Shazam* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Flipboard.Flipboard* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *9E2F88E3.Twitter* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *ClearChannelRadioDigital.iHeartRadio* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *D5EA27B7.Duolingo-LearnLanguagesforFree* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *AdobeSystemsIncorporated.AdobePhotoshopExpress* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *PandoraMediaInc.29680B314EFC2* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *46928bounde.EclipseManager* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *ActiproSoftwareLLC.562882FEEB491* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *SpotifyAB.SpotifyMusic* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Advertising.Xaml* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.RemoteDesktop* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.NetworkSpeedTest* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Todos* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Windows.Search* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Windows.Cortana* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *windowsterminal* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.ScreenSketch* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.PowerAutomateDesktop* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.People* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.MSPaint* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Office.Outlook* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsNotepad* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.OneDrive* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.ParentalControls* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Clipchamp* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *RealtekSemiconductorCorp.RealtekAudioControl* | Remove-AppxPackage" >nul 2>&1
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.RemoteDesktop* | Remove-AppxPackage"
taskkill /F /IM Teams.exe >nul 2>&1
taskkill /F /IM msteams.exe >nul 2>&1
taskkill /F /IM msteams_autostarter.exe >nul 2>&1
taskkill /F /IM msteamsupdate.exe >nul 2>&1
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *MicrosoftTeams* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *MicrosoftTeams_24102.2309.2851.4917_x64__8wekyb3d8bbwe* | Remove-AppxPackage"
echo Mircosoft Apps and Bloatware deleted successfully.
timeout 2 > nul

cls
color 9
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.
echo.                     █████╗ ██████╗ ██████╗     ██████╗ ███████╗██████╗ ██╗      ██████╗  █████╗ ████████╗
echo.                    ██╔══██╗██╔══██╗██╔══██╗    ██╔══██╗██╔════╝██╔══██╗██║     ██╔═══██╗██╔══██╗╚══██╔══╝
echo.                    ███████║██████╔╝██████╔╝    ██║  ██║█████╗  ██████╔╝██║     ██║   ██║███████║   ██║   
echo.                    ██╔══██║██╔═══╝ ██╔═══╝     ██║  ██║██╔══╝  ██╔══██╗██║     ██║   ██║██╔══██║   ██║   
echo.                    ██║  ██║██║     ██║         ██████╔╝███████╗██████╔╝███████╗╚██████╔╝██║  ██║   ██║   
echo.                    ╚═╝  ╚═╝╚═╝     ╚═╝         ╚═════╝ ╚══════╝╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║       (Quaked) App Debloat Ran successfully.       ║       
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                          
timeout 2 > nul  

@echo off
:: (Quaked) App Installer.
:App Installer Return
cls
color D
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.                                                  █████╗ ██████╗ ██████╗                                               
echo.                                                 ██╔══██╗██╔══██╗██╔══██╗                                              
echo.                                                 ███████║██████╔╝██████╔╝                                              
echo.                                                 ██╔══██║██╔═══╝ ██╔═══╝                                               
echo.                                                 ██║  ██║██║     ██║                                                   
echo.                                                 ╚═╝  ╚═╝╚═╝     ╚═╝                                                   
echo.                                                                      
echo.                         ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗ 
echo.                         ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
echo.                         ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝
echo.                         ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗
echo.                         ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║
echo.                         ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝
echo. 
echo.
echo.
echo.                                                                          
echo Choose an option:
echo 1. VLC + Modern Looking theme (Video and Media Player)
echo 2. Spotify + Spicetify (Mircosoft Store Spotify uninstalled, use this one)        
echo 3. Openasar/Discord Tweak (Makes Discord lighter, Faster and more optimized!)
echo 4. Logitech Memory Manager (Logitech Ghub uninstalled use this as an alternative)
echo 5. Hidusbf (Overclocks usb polling rate input devices like Controllers)
echo 6. Dcontrol (Disables Windows Defender)
echo 7. 7Zip (Like Winrar but just better)
echo 8. Google Chrome (The Better Edge)
echo 9. Skip!

set /p option="Enter option number: "

if "%option%"=="1" (
    set "fileURL=1vXarsXIth4E7peNo0dR2P_QPE_0-r-3t"
    set "fileName=VLC.zip"
    set "startURL=https://www.videolan.org/vlc/download-windows.html"
    echo.
    echo.
    cls
    echo Base VLC looks ugly, using a custom theme helps!
    echo Theme installation instructions in the pack.
) else if "%option%"=="2" (
    set "fileURL=https:1Mm-JlOChMQMdQgc-iJ7d3U5-DSh-nY4G"
    set "fileName=Spicetify.zip"
    set "startURL=https://www.spotify.com/de-en/download/windows/"
    echo.
    echo.
    cls
    echo Spicetify Allows for custom theme and addons for spotify, but most importantly allows for adblock!
    echo Download Spotify directly from the Spotify website...
    echo instructions in the pack.
) else if "%option%"=="3" (
    set "fileURL=15LAsAGuYYURA0ZWAoEF3ytP7oyRH-b1P"
    set "fileName=Opensar.zip"
    echo.
    echo.
    cls
    echo Opensar makes discord lighter, Faster and more optimized!
    echo Installation instructions in the pack.
) else if "%option%"=="4" (
    set "fileURL=1EUUwHRHY4162KeYN9tUygL51EXtWry4G"
    set "fileName=OMM.zip"
    echo.
    echo.
    cls
    echo Logitech Ghub Was uninstalled use this instead! 
) else if "%option%"=="5" (
    set "fileURL=14WIiO3aHWcnY5esL3M03JrlnpDoCjeyQ"
    set "fileName=Hidusbf.zip"
    echo.
    echo.
    cls
    echo Video Instructions in the pack! 
) else if "%option%"=="6" (
    set "fileURL=1oFEOYWx97e7ps7msLbgdN5RiKFLKFdBx"
    set "fileName=7xsyz7.rar"
    echo.
    echo.
    cls
    echo Instructions in the pack!
    echo Password is sordum
) else if "%option%"=="7" (
    set "fileURL=1nv-tY5b9SpcEKjzH9DPVPIeVEwwzgo5e"
    set "fileName=7zip.zip"
    echo.
    echo.
    cls
    echo No instructions needed!
) else if "%option%"=="8" (
    set "fileURL=19_8pimxw87eBEd8IxkaIsTIx8C13auef"
    set "fileName=Chrome Setup.zip"
    echo.
    echo.
    cls
    echo No instructions needed!
) else if "%option%"=="9" ( 
    echo Skipping!
    timeout 1 > nul
    goto :SkipAPP  
)

set "downloadsFolder=%USERPROFILE%\Downloads"
chcp 65001 >nul 2>&1
echo.
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝
curl -s -L "https://drive.google.com/uc?export=download&id=%fileURL%" -o "%downloadsFolder%\%fileName%" 
if exist "%downloadsFolder%\%fileName%" (
    echo Download successful!
    if not "%startURL%"=="" (
        start "" "%startURL%"
        pause
    ) else (
        pause
    )
) else (
    echo Download failed.
    echo Skipping!
    timeout 1 > nul
    goto :SkipAPP
)
goto :App Installer Return

:: (Quaked) NSudo and Orca Lite Installer.
:SkipAPP
cls
chcp 65001 >nul 2>&1
color 9
echo.
echo.
echo.
echo.              
echo. 
echo.                            ██████╗ ██████╗  ██████╗ █████╗     ██╗     ██╗████████╗███████╗
echo.                           ██╔═══██╗██╔══██╗██╔════╝██╔══██╗    ██║     ██║╚══██╔══╝██╔════╝
echo.                           ██║   ██║██████╔╝██║     ███████║    ██║     ██║   ██║   █████╗  
echo.                           ██║   ██║██╔══██╗██║     ██╔══██║    ██║     ██║   ██║   ██╔══╝  
echo.                           ╚██████╔╝██║  ██║╚██████╗██║  ██║    ███████╗██║   ██║   ███████╗
echo.                            ╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝    ╚══════╝╚═╝   ╚═╝   ╚══════╝
echo. 
echo.                         ╔══════════════════════════════════════════════════════════════════════╗
echo.                         ║   Orca named after Update Orchestrator, is a bat file that deletes   ║
echo.                         ║Update Orchestrator task, UsoCoreWorker and UsoClient using nsudo with║
echo.                         ║         the highest possible privileges to achieve this.....         ║
echo.                         ╚══════════════════════════════════════════════════════════════════════╝       
echo.
echo. 
echo.
echo.
chcp 437 >nul
powershell -Command "Write-Host '(Recommeded)' -ForegroundColor White -BackgroundColor Red"                              
echo Do you want to install NSudo and Orca Lite?
set /p choice=Enter (Y/N): 

if /i "%choice%"=="Y" (
    set "fileURL=https://github.com/QuakedK/Downloads/raw/main/NSudoLG.exe"
    set "fileName=NSudoLG.exe"
    set "fileURL2=https://raw.githubusercontent.com/QuakedK/Downloads/main/OrcaLiteV2.bat"
    set "fileName2=Orca Lite V2.bat"
) else if /i "%choice%"=="N" ( 
    echo Skipping NSudo and Orca Lite Install! 
    timeout 2 > nul
    goto :ProcessD
)

set "downloadsFolder=%USERPROFILE%\Downloads"
chcp 65001 >nul 2>&1
echo.
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝

curl -s -L "%fileURL%" -o "%downloadsFolder%\%fileName%"
curl -s -L "%fileURL2%" -o "%downloadsFolder%\%fileName2%"
if exist "%downloadsFolder%\%fileName%" (
    echo NSudo and Orca Lite download successful!
    cls
    echo Check "Enable All Privileges" Then click "Browse"
    echo Locate your downloads folder then select "OrcaLite.bat" then run it.
    echo Let it finish, then continue with one click by pressing space! 
    echo.
    echo Nsudo might not work, if it doesn't skip it!
    start "" "%downloadsFolder%\%fileName%"
    pause
) else (
    echo NSudo download failed.
    echo Skipping!
    timeout 1 > nul
    goto :ProcessD 
)

:: (Quaked) Process Destroyer.
:ProcessD
cls
chcp 65001 >nul 2>&1
color D
echo.
echo.
echo. 
echo.                                ██████╗ ██████╗  ██████╗  ██████╗███████╗███████╗███████╗                  
echo.                                ██╔══██╗██╔══██╗██╔═══██╗██╔════╝██╔════╝██╔════╝██╔════╝                  
echo.                                ██████╔╝██████╔╝██║   ██║██║     █████╗  ███████╗███████╗                  
echo.                                ██╔═══╝ ██╔══██╗██║   ██║██║     ██╔══╝  ╚════██║╚════██║                  
echo.                                ██║     ██║  ██║╚██████╔╝╚██████╗███████╗███████║███████║                  
echo.                                ╚═╝     ╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚══════╝╚══════╝╚══════╝                  
echo.                                                                           
echo.                        ██████╗ ███████╗███████╗████████╗██████╗  ██████╗ ██╗   ██╗███████╗██████╗ 
echo.                        ██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔═══██╗╚██╗ ██╔╝██╔════╝██╔══██╗
echo.                        ██║  ██║█████╗  ███████╗   ██║   ██████╔╝██║   ██║ ╚████╔╝ █████╗  ██████╔╝
echo.                        ██║  ██║██╔══╝  ╚════██║   ██║   ██╔══██╗██║   ██║  ╚██╔╝  ██╔══╝  ██╔══██╗
echo.                        ██████╔╝███████╗███████║   ██║   ██║  ██║╚██████╔╝   ██║   ███████╗██║  ██║
echo.                        ╚═════╝ ╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚══════╝╚═╝  ╚═╝
echo. 
echo.                        ╔══════════════════════════════════════════════════════════════════════╗
echo.                        ║  Process Destroyer is a batch file that disables over 30 different   ║
echo.                        ║  Services using using nsudo with the highest possible privileges to  ║
echo.                        ║                        to achieve this...                            ║
echo.                        ╚══════════════════════════════════════════════════════════════════════╝       
echo.
echo. 
chcp 437 >nul
powershell -Command "Write-Host '(Not Recommended)' -ForegroundColor White -BackgroundColor Red" 
powershell -Command "Write-Host 'It''s (Required) to be ran on a system that installed windows with an Offline/Local Account.' -ForegroundColor White -BackgroundColor Red"   
powershell -Command "Write-Host 'Otherwise you''ll get a black screen upon logging in, you cannot get passed.' -ForegroundColor White -BackgroundColor Red"    
set /p choice=Enter (Y/N): 

if /i "%choice%"=="Y" (
    set "fileURL=https://github.com/QuakedK/Downloads/raw/main/NSudoLG.exe"
    set "fileName=NSudoLG.exe"
    set "fileURL2=https://github.com/QuakedK/Process-Destroyer/releases/download/Tweaker/Oneclick-Process-Destroyer-V1.5.bat"
    set "fileName2=Oneclick Process Destroyer V1.5.bat"
) else if /i "%choice%"=="N" ( 
    echo Skipping NSudo and Process Destroyer Install! 
    timeout 2 > nul
    goto :end4
)

set "downloadsFolder=%USERPROFILE%\Downloads"
chcp 65001 >nul 2>&1
echo.
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝

curl -s -L "%fileURL%" -o "%downloadsFolder%\%fileName%"
curl -s -L "%fileURL2%" -o "%downloadsFolder%\%fileName2%"
if exist "%downloadsFolder%\%fileName%" (
    echo NSudo and Process Destroyer download successful!
    cls
    echo Check "Enable All Privileges" Then click "Browse"
    echo Locate your downloads folder then select "Oneclick Process DestroyerV1.5.bat" then run it.
    echo Let it finish, then continue with one click by pressing space! 
    echo.
    echo Nsudo might not work, if it doesn't skip it!
    start "" "%downloadsFolder%\%fileName%"
    pause
) else (
    echo NSudo download failed.
    echo Skipping!
    timeout 1 > nul
    goto :end4  
)

:: (Prolix, slightly edited and changed code by Quaked) Gpu Tweaks.
:end4
cls
color D
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.                                                ██████╗ ██████╗ ██╗   ██╗             
echo.                                               ██╔════╝ ██╔══██╗██║   ██║             
echo.                                               ██║  ███╗██████╔╝██║   ██║             
echo.                                               ██║   ██║██╔═══╝ ██║   ██║             
echo.                                               ╚██████╔╝██║     ╚██████╔╝             
echo.                                                ╚═════╝ ╚═╝      ╚═════╝              
echo.                                                   
echo.                                  ████████╗██╗    ██╗███████╗ █████╗ ██╗  ██╗███████╗
echo.                                  ╚══██╔══╝██║    ██║██╔════╝██╔══██╗██║ ██╔╝██╔════╝
echo.                                     ██║   ██║ █╗ ██║█████╗  ███████║█████╔╝ ███████╗
echo.                                     ██║   ██║███╗██║██╔══╝  ██╔══██║██╔═██╗ ╚════██║
echo.                                     ██║   ╚███╔███╔╝███████╗██║  ██║██║  ██╗███████║
echo.                                     ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
echo.
echo.
echo.
echo (What Gpu do you have?)
echo 1. Nvidia
echo 2. AMD
echo 3. Intel
echo 4. None/Skip
echo.

set /p GPU=(enter the corresponding number):

@echo off

if "%GPU%"=="1" (
    :: Nvidia Power Settings
    cls
    echo Disabling Power Settings...
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{7B7A1E6E-0A7E-11EF-946A-806E6F6E6963}\0000" /v "PowerMizerEnable" /t REG_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{7B7A1E6E-0A7E-11EF-946A-806E6F6E6963}\0000" /v "PowerMizerLevel" /t REG_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{7B7A1E6E-0A7E-11EF-946A-806E6F6E6963}\0000" /v "PowerMizerLevelAC" /t REG_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{7B7A1E6E-0A7E-11EF-946A-806E6F6E6963}\0000" /v "PerfLevelSrc" /t REG_DWORD /d "8738" /f
    REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t Reg_DWORD /d "0" /f 
    REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e96c-e325-11ce-bfc1-08002be10318}\0001\PowerSettings" /v IdlePowerState /t REG_BINARY /d 00000000 /f
    REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class{4d36e96c-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDynamicPstate" /t REG_DWORD /d "1" /f
    timeout 2 > nul
    
    cls
    :: Nvidia Telemetry
    echo Disabling Nvidia Telemetry...
    REG ADD "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d 0 /f 
    REG ADD "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d 0 /f 
    REG ADD "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d 0 /f 
    REG ADD "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d 0 /f 
    REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "1" /f
    REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\Startup" /v "SendTelemetryData" /t REG_DWORD /d 0 /f
    REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvBackend" /f >nul 2>&1
    timeout 2 > nul
    
    cls
    :: Nvidia Tasks
    echo Disabling Nvidia Tasks...
    echo.
    echo May show errors, if you already ran this script.
    schtasks /change /disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"  
    schtasks /change /disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"  
    schtasks /change /disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"  
    schtasks /change /disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"  
    schtasks /change /disable /tn "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"  
    schtasks /change /disable /tn "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
    schtasks /change /disable /tn "NvBatteryBoostCheckOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" 
    schtasks /change /disable /tn "NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
    timeout 2 > nul
    
    cls
    :: Mpo and HDCP Tweaks
    echo Disabling HDCP and MPO...
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMHdcpKeyGlobZero" /t REG_DWORD /d 1 /f
    REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /t REG_DWORD /d 5 /f
    timeout 2 > nul
    
    cls
    :: interrupt policies
    echo Setting interrupt policies...
    FOR /f %%g IN ('wmic path win32_VideoController get PNPDeviceID ^| findstr /L "VEN_"') do REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f 
    FOR /f %%g IN ('wmic path win32_VideoController get PNPDeviceID ^| findstr /L "VEN_"') do REG DELETE "HKLM\System\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f >nul 2>&1
    FOR /f %%i IN ('wmic path Win32_NetworkAdapter get PNPDeviceID ^| findstr /L "VEN_"') do REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f 
    FOR /f %%i IN ('wmic path Win32_NetworkAdapter get PNPDeviceID ^| findstr /L "VEN_"') do REG DELETE "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f >nul 2>&1
    FOR /f %%u IN ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%u\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%u\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d C0 >nul 2>&1
    )
    FOR /f %%v IN ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%v\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%v\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d C0 >nul 2>&1
    )
    FOR /f %%n IN ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do ( 
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d 30 >nul 2>&1
    )
    timeout 2 > nul
   
    cls
    :: Nvidia Telemetry Client
    echo Starting Nvidia Telemetry Client Script.
    timeout 2 > nul  
    cls
    goto:NvidiaTelemetryClient 
) else if "%GPU%"=="2" (
    :: All AMD Tweaks
    cls
    echo Disabling Amd Bloat...
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "3D_Refresh_Rate_Override_DEF" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "3to2Pulldown_NA" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AAF_NA" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "Adaptive De-interlacing" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AllowRSOverlay" /t Reg_SZ /d "false" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AllowSkins" /t Reg_SZ /d "false" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AllowSnapshot" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AllowSubscription" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AntiAlias_NA" /t Reg_SZ /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AreaAniso_NA" /t Reg_SZ /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "ASTT_NA" /t Reg_SZ /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AutoColorDepthReduction_NA" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "DisableSAMUPowerGating" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "DisableUVDPowerGatingDynamic" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "DisableVCEPowerGating" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "EnableAspmL0s" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "EnableAspmL1" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "EnableUlps" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "EnableUlps_NA" /t Reg_SZ /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "KMD_DeLagEnabled" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "KMD_FRTEnabled" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "DisableDMACopy" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "DisableBlockWrite" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "StutterMode" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "EnableUlps" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "PP_SclkDeepSleepDisable" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "PP_ThermalAutoThrottlingEnable" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "DisableDrmdmaPowerGating" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "KMD_EnableComputePreemption" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /t Reg_SZ /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /v "Main3D" /t Reg_BINARY /d "3100" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /v "FlipQueueSize" /t Reg_BINARY /d "3100" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /v "ShaderCache" /t Reg_BINARY /d "3200" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /v "Tessellation_OPTION" /t Reg_BINARY /d "3200" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /v "Tessellation" /t Reg_BINARY /d "3100" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /v "VSyncControl" /t Reg_BINARY /d "3000" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /v "TFQ" /t Reg_BINARY /d "3200" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" /v "ProtectionControl" /t REG_BINARY /d "0100000001000000" /f 
    timeout 2 > nul 
 
    cls
    :: interrupt policies
    echo Setting interrupt policies...
    FOR /f %%g IN ('wmic path win32_VideoController get PNPDeviceID ^| findstr /L "VEN_"') do REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f 
    FOR /f %%g IN ('wmic path win32_VideoController get PNPDeviceID ^| findstr /L "VEN_"') do REG DELETE "HKLM\System\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f >nul 2>&1
    FOR /f %%i IN ('wmic path Win32_NetworkAdapter get PNPDeviceID ^| findstr /L "VEN_"') do REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f 
    FOR /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID ^| findstr /L "VEN_"') do REG DELETE "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f >nul 2>&1
    FOR /f %%u IN ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%u\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%u\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d C0 >nul 2>&1
    )
    FOR /f %%v IN ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%v\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%v\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d C0 >nul 2>&1
    )
    FOR /f %%n IN ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d 30 >nul 2>&1
    )
    timeout 2 > nul 
    goto:DoneSkipGpu
) else if "%GPU%"=="3" (
    :: Intel Tweaks
    cls
    echo Disabling Intel Gpu Bloat...
    for /f %%t in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "Intel" ^| findstr "HKEY"') do (
    Reg.exe add "%%t" /v "Disable_OverlayDSQualityEnhancement" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "IncreaseFixedSegment" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "AdaptiveVsyncEnable" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "DisablePFonDP" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "EnableCompensationForDVI" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "NoFastLinkTrainingForeDP" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "ACPowerPolicyVersion" /t REG_DWORD /d "16898" /f
    Reg.exe add "%%t" /v "DCPowerPolicyVersion" /t REG_DWORD /d "16642" /f
  )

  Reg.exe add "HKLM\Software\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "512" /f
  timeout 2 > nul

    cls
    :: interrupt policies
    echo Setting interrupt policies...
    FOR /f %%g IN ('wmic path win32_VideoController get PNPDeviceID ^| findstr /L "VEN_"') do REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f 
    FOR /f %%g IN ('wmic path win32_VideoController get PNPDeviceID ^| findstr /L "VEN_"') do REG DELETE "HKLM\System\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f >nul 2>&1
    FOR /f %%i IN ('wmic path Win32_NetworkAdapter get PNPDeviceID ^| findstr /L "VEN_"') do REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f 
    FOR /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID ^| findstr /L "VEN_"') do REG DELETE "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f >nul 2>&1
    FOR /f %%u IN ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%u\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%u\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d C0 >nul 2>&1
    )
    FOR /f %%v IN ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%v\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%v\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d C0 >nul 2>&1
    )
    FOR /f %%n IN ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d 30 >nul 2>&1
    )
        timeout 2 > nul 
        goto:DoneSkipGpu
) else if "%GPU%"=="4" (
    echo Skipping Gpu Tweaks.
    timeout 1 > nul
    goto:DoneSkipGpu
) else (
    echo Invalid input. Please enter the number corresponding to your GPU type.
)

cls
:NvidiaTelemetryClient
echo Do you want to delete Nvidia Telemetry Client?
chcp 437 >nul
powershell -Command "Write-Host 'It Will Break Shadowplay/Clipping' -ForegroundColor White -BackgroundColor Red"
echo Are you sure? (Y/N)
echo.
set /p option="Enter option number: "
if /i "%option%"=="Y" (
    echo Deleting Nvidia Telemetry Client...
    rundll32 "%PROGRAMFILES%\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL",UninstallPackage NvTelemetry
    rundll32 "%PROGRAMFILES%\NVIDIA Corporation\Installer2\InstallerCore\NVI2.DLL",UninstallPackage NvTelemetryContainer
    timeout 2 > nul
) else if /i "%option%"=="N" (
    echo Not Deleting Nvidia Telemetry Client...
    echo I recommend OBS Replay Buffer over Nvidia Shadowplay!
    timeout 3 > nul
)

cls
echo Running Nvidia Profile Inspector with imported optimized settings...
set "fileURL=https://github.com/QuakedK/Downloads/raw/main/nvidiaProfileInspector.exe"
set "fileName=nvidiaProfileInspector.exe"
set "fileURL2=https://raw.githubusercontent.com/QuakedK/Downloads/main/QuakedOptimizedNVProflie.nip"
set "fileName2=Quaked Optimized NV Proflie.nip"
set "downloadsFolder=%USERPROFILE%\Downloads"
chcp 65001 >nul 2>&1
echo.
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝

curl -s -L "%fileURL%" -o "%downloadsFolder%\%fileName%"
curl -s -L "%fileURL2%" -o "%downloadsFolder%\%fileName2%"
if exist "%downloadsFolder%\%fileName%" (
    echo Download successful!
    echo Importing configuration file...
    "%downloadsFolder%\%fileName%" -importProfile "%downloadsFolder%\%fileName2%"  
    pause
) else (
    echo Download of executable failed.
    echo Skipping importing configuration file.
    pause
)

:: (Quaked) Latency Tweaks.
:DoneSkipGpu
cls
color 9
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                 ██╗      █████╗ ████████╗███████╗███╗   ██╗ ██████╗██╗   ██╗       
echo.                                 ██║     ██╔══██╗╚══██╔══╝██╔════╝████╗  ██║██╔════╝╚██╗ ██╔╝       
echo.                                 ██║     ███████║   ██║   █████╗  ██╔██╗ ██║██║      ╚████╔╝        
echo.                                 ██║     ██╔══██║   ██║   ██╔══╝  ██║╚██╗██║██║       ╚██╔╝         
echo.                                 ███████╗██║  ██║   ██║   ███████╗██║ ╚████║╚██████╗   ██║          
echo.                                 ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═══╝ ╚═════╝   ╚═╝          
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║              Running latency Tweaks...             ║       
echo.                                  ╚════════════════════════════════════════════════════╝
echo.                                                                          
timeout 2 > nul  

cls
color D
chcp 437 >nul
echo (Quaked) Applying System Clock Settings...
bcdedit /deletevalue useplatformclock >nul 2>&1
bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes
echo System Clock Settings appiled successfully.
timeout 2 > nul

cls
color 9
echo (Quaked) Setting Priority Separation... 
echo.
echo Choose an option:
echo 1. 2A (Recommended)
echo 2. 20 Decimal 
echo 3. 22 Decimal 
echo 4. 24 Decimal
echo 5. Skip!

set /p option="Enter option number: "

if "%option%"=="1" (
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 0x2a /f
echo Priority Separation appiled successfully.
timeout 2 > nul
) else if "%option%"=="2" (
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 0x00000014 /f
echo Priority Separation appiled successfully.
timeout 2 > nul
) else if "%option%"=="3" (
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 0x00000016 /f
echo Priority Separation appiled successfully.
timeout 2 > nul
) else if "%option%"=="4" (
 reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 0x00000018 /f
echo Priority Separation appiled successfully.
timeout 2 > nul
) else if "%option%"=="5" (
    echo Skipping!
    goto :SkippingPriority
    timeout 1 > nul   
) 

:SkippingPriority
cls
@echo off
color D
echo (Quaked) Installing and Setting up Timer Res...
echo.
echo Choose an option:
powershell -Command "Write-Host '1. Mircosoft Visual Runtimes, Needed for SetTimerResolution' -ForegroundColor White -BackgroundColor Red"
echo 2. Timer Res (Windows 10)
echo 3. Timer and Global Res (Windows 11)
echo 4. ISLC (Both Win 10 and 11)
echo 5. Skip!

set /p option="Enter option number: "

if "%option%"=="1" (
    set "fileURL=https://github.com/QuakedK/Downloads/raw/main/VC_redist.x64.exe"
    set "fileName=VC_redist.x64.exe" 
) else if "%option%"=="2" (
    set "fileURL=https://github.com/QuakedK/Downloads/raw/main/SetTimerResolution.exe"
    set "fileName=SetTimerResolution.exe"
) else if "%option%"=="3" (
    set "fileURL=https://github.com/QuakedK/Downloads/raw/main/SetTimerResolution.exe"
    set "fileName=SetTimerResolution.exe"
) else if "%option%"=="4" (
    set "fileURL=https://github.com/QuakedK/Downloads/raw/main/ISLC.zip"
    set "fileName=ISLC.zip"
    set "extractFolder=%USERPROFILE%\Downloads\ISLC"
) else if "%option%"=="5" (
    echo Skipping!
    timeout 1 > nul
    goto :SkipTimer
) 

set "downloadsFolder=%USERPROFILE%\Downloads"
chcp 65001 >nul 2>&1
echo.
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝
curl -s -L "%fileURL%" -o "%downloadsFolder%\%fileName%"
chcp 437 >nul
if exist "%downloadsFolder%\%fileName%" (
    echo Download successful!
    if "%option%"=="1" (
        cls
        echo Making Sure we have Mircosoft Visual Runtime installed!
        start "" "%USERPROFILE%\Downloads\VC_redist.x64.exe"
        echo Click "Install" otherwise close and cancel...
        pause
        goto :SkippingPriority
    ) else if "%option%"=="2" (
        echo Starting Timer Res...
        Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "TimerResolution" /t REG_SZ /d "%USERPROFILE%\Downloads\SetTimerResolution.exe --resolution 5000 --no-console" /f
        start "" "%USERPROFILE%\Downloads\SetTimerResolution.exe" --resolution 5000 --no-console
        echo Timer Res is now active in the background!
        Pause
    ) else if "%option%"=="3" (
        echo Starting Timer and Global Res...
        Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "TimerResolution" /t REG_SZ /d "%USERPROFILE%\Downloads\SetTimerResolution.exe --resolution 5000 --no-console" /f
        REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v GlobalTimerResolutionRequests /t REG_DWORD /d 1 /f
        start "" "%USERPROFILE%\Downloads\SetTimerResolution.exe" --resolution 5000 --no-console
        echo Timer and Global Res are now active in the background!
        Pause
    ) else if "%option%"=="4" (
        timeout 1 > nul
        echo Extracting ISLC...
        mkdir "%extractFolder%" > nul
        tar -xf "%downloadsFolder%\%fileName%" -C "%extractFolder%"
        echo ISLC extracted successfully!
        echo Starting Islc
        start "" "%USERPROFILE%\Downloads\ISLC\ISLC\Intelligent standby list cleaner ISLC.exe"
        cls
        echo 1. Check and turn on the boxes that say, Start ISLC minimized and Launch ISLC.
        echo.
        echo 2. Check and turn on the box Enable timer resolution and change the 1.00ms to 0.50ms or 0.5000.
        echo.
        echo 3. If you're Windows 11 also check UseGlobalTimerResolutionRequests
        echo.
        echo 4. Make sure the polling rate is set to 1000ms
        echo. 
        echo 5. Change Free memory is lower than, to half of your ram.
        echo.
        echo  Example: 1gb of ram is 1024Mb X 16 = 16384 then divide by 2 = 8192MB
        echo  The list size is at least : 1024 MB
        echo            And
        echo  Free memory is lower than : 8192MB
        echo.
        echo  Here's presets: 
        echo  4gb = 2048 MB
        echo  6gb = 3072 MB
        echo  8gb = 4096 MB
        echo  10gb = 5120 MB
        echo  12gb = 6144 MB
        echo  16gb = 8192 MB
        echo  32gb = 16384 MB
        echo  64gb = 32768 MB
        echo.
        echo  6. Click the start box
        pause
    )
) else (
    echo Download failed.
    echo Skipping!
    timeout 1 > nul
    goto :SkipTimer
)

:SkipTimer
cls
color 9
echo (Khorive, Inspired) Tweaking NDIS...
chcp 437 >nul
@echo off
setlocal

echo Detecting Network Adapter...

for /f "skip=1 delims=" %%a in ('wmic nic where "NetConnectionStatus=2" get NetConnectionID /value 2^>nul') do (
    for /f "tokens=2 delims==" %%b in ("%%a") do (
        set "adapter_name=%%b"
    )
)

if defined adapter_name (
    echo Your current network adapter is: %adapter_name%

    echo Enabling Interrupt Moderation and setting Interrupt Moderation Rate to medium...
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Interrupt Moderation' | Set-NetAdapterAdvancedProperty -RegistryValue 1" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Interrupt Moderation Rate' | Set-NetAdapterAdvancedProperty -RegistryValue 125" >nul 2>&1

    echo Setting NetworkThrottlingIndex to 10...
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 10 /f
    echo NDIS Tweaks appiled successfully.
) else (
    echo Unable to detect your current network adapter.
    pause
)

endlocal
timeout 2 > nul

cls
color D
echo Do you want to Run (Calypto, Inspired) Device Manager Tweaks?
chcp 437 >nul
powershell -Command "Write-Host 'Can cause bluescreens and other issues, so be cautious.' -ForegroundColor White -BackgroundColor Red"
set /p choice=Enter (Y/N): 
if /i "%choice%"=="Y" (
    echo Running Calypto, Inspired Device Manager Tweaks
    timeout 2 > nul
    cls
    goto :DeviceManagerTweaks
) else if /i "%choice%"=="N" ( 
    echo Skipping Calypto's Device Manager Tweaks...
    timeout 2 > nul
    cls
    goto :SkipDeviceManager
)

:DeviceManagerTweaks
echo (Calypto) Tweaking and Disabling things in Device Manager...
setlocal enabledelayedexpansion

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft GS Wavetable Synth*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*NDIS Virtual Network Adapter Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Composite Bus Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft Virtual Drive Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Remote Desktop Device Redirector Bus*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Intel(R) Management Engine Interface #1*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!" >nul 2>&1

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Intel(R) SPI (Flash) Controller - 7AA4*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!" >nul 2>&1

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Intel(R) SMBus - 7AA3*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!" >nul 2>&1

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*UMBus Root Bus Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft Hypervisor Service*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft Device Association Root Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft Hyper-V Vitualization Infrastucture Driver*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
echo.
echo Device Manager appiled successfully.
timeout 2 > nul

:: (Quaked) Power Plan Selection.
:SkipDeviceManager
@echo off
cls
chcp 65001 >nul 2>&1
color 9
echo.
echo.
echo.
echo.                                          ░█▀█░█▀█░█░█░█▀▀░█▀▄░░░█▀█░█░░░█▀█░█▀█
echo.                                          ░█▀▀░█░█░█▄█░█▀▀░█▀▄░░░█▀▀░█░░░█▀█░█░█
echo.                                          ░▀░░░▀▀▀░▀░▀░▀▀▀░▀░▀░░░▀░░░▀▀▀░▀░▀░▀░▀           
echo. 
echo.                        ╔════════════════════════════════════════════════════════════════════════╗
echo.                        ║                   1. Quaked Ultimate Performance                       ║
echo.                        ║   Provides High Performance And Low Latency while having idles enabled ║ 
echo.                        ║       Perfect for the majority of system's and recommended by me!      ║
echo.                        ╚════════════════════════════════════════════════════════════════════════╝              
echo.
echo.                        ╔════════════════════════════════════════════════════════════════════════╗
echo.                        ║          2. (Advanced) Quaked Ultimate Performance Idle Off:           ║
echo.                        ║      Provides Sightly Decreased Latency And better performance,        ║
echo.                        ║       But unfortunately At the cost of having idle off you get         ║
echo.                        ║  More Wattage, power consumption, higher cpu temps and 100p Cpu Usage  ║   
echo.                        ╚════════════════════════════════════════════════════════════════════════╝           
echo.
echo.
echo Choose an option:
chcp 437 >nul
powershell -Command "Write-Host '1. (Recommended) Quaked Ultimate Performance' -ForegroundColor White -BackgroundColor Red"
echo 2. (Advanced) Quaked Ultimate Performance Idle Off
echo 3. Skip!

set /p option="Enter option number: "

if "%option%"=="1" (
    set "fileID=1mxFJjSxtx9LOLivfUjr3UE_rxizUfZ9Q"
    set "fileName=Quaked Ultimate Performance.pow"
) else if "%option%"=="2" (
    set "fileID=1_KxNB1UDRnvXLKBS84sZX3k03ixxjogY"
    set "fileName=Quaked Ultimate Performance Idle Off.pow"
) else if "%option%"=="3" ( 
    echo Skipping Power Plan Section! 
    timeout 2 > nul   
    goto :endpower
)

set "downloadsFolder=%USERPROFILE%\Downloads"
chcp 65001 >nul 2>&1
echo.
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝
curl -s -L "https://drive.google.com/uc?export=download&id=%fileID%" -o "%downloadsFolder%\%fileName%"
if exist "%downloadsFolder%\%fileName%" (
    echo Download successful!
    powercfg -import "%downloadsFolder%\%fileName%"
    echo.
    timeout 3 > nul
    goto:Activatecpl
) else (
    echo Download failed.
    echo Skipping Power Plan Section! 
    timeout 2 > nul   
    goto :endpower
)

:Activatecpl
@echo off
setlocal enabledelayedexpansion

REM Check if Quaked Ultimate Performance power plan exists
for /f "tokens=2 delims=:(" %%i in ('powercfg /list ^| findstr /C:"Quaked Ultimate Performance"') do (
    set plan_guid=%%i
)

REM Check if Quaked Ultimate Performance Idle Off power plan exists
for /f "tokens=2 delims=:(" %%i in ('powercfg /list ^| findstr /C:"Quaked Ultimate Performance Idle Off"') do (
    set idle_off_guid=%%i
)

REM Activate the existing plan
if defined plan_guid (
    powercfg /setactive %plan_guid% >nul 2>&1
    powercfg /setactive %idle_off_guid% >nul 2>&1
    echo Activated Quaked Power Plan.
    timeout 2 > nul
    goto:CheckPower    
)

:CheckPower
cls
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e >nul 2>&1
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a >nul 2>&1
echo Opening Power Plan Selection to Confirm...
powercfg.cpl
echo You might have to refresh to see any changes!
echo Please select the power plan...
pause

cls
echo Disabling C States...
powercfg -setacvalueindex scheme_current SUB_SLEEP AWAYMODE 0 >nul 2>&1
powercfg /setactive SCHEME_CURRENT >nul 2>&1
powercfg -setacvalueindex scheme_current SUB_SLEEP ALLOWSTANDBY 0 >nul 2>&1
powercfg /setactive SCHEME_CURRENT >nul 2>&1
powercfg -setacvalueindex scheme_current SUB_SLEEP HYBRIDSLEEP 0 >nul 2>&1
powercfg /setactive SCHEME_CURRENT >nul 2>&1
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100 >nul 2>&1
powercfg /setactive SCHEME_CURRENT >nul 2>&1
timeout 2 > nul

cls
echo Disabling Core Parking...
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100 >nul 2>&1
powercfg /setactive SCHEME_CURRENT >nul 2>&1
timeout 2 > nul

cls
echo Disabling Throttle States...
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 0 >nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d "0" /f >nul 2>&1
timeout 2 > nul

:: (Quaked) Wifi Fixer.
:endpower
cls
color D
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                              ██╗    ██╗██╗███████╗██╗    ███████╗██╗██╗  ██╗███████╗██████╗ 
echo.                              ██║    ██║██║██╔════╝██║    ██╔════╝██║╚██╗██╔╝██╔════╝██╔══██╗
echo.                              ██║ █╗ ██║██║█████╗  ██║    █████╗  ██║ ╚███╔╝ █████╗  ██████╔╝
echo.                              ██║███╗██║██║██╔══╝  ██║    ██╔══╝  ██║ ██╔██╗ ██╔══╝  ██╔══██╗
echo.                              ╚███╔███╔╝██║██║     ██║    ██║     ██║██╔╝ ██╗███████╗██║  ██║
echo.                               ╚══╝╚══╝ ╚═╝╚═╝     ╚═╝    ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║             Version 2.0 - By Quaked                ║
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                          
echo Choose an option:
echo 1. Turn On Wifi
echo 2. Skip! 

set /p option="Enter option number: "

if "%option%"=="1" (
    echo Turning On Wifi...
    sc config LanmanWorkstation start= demand
    sc config WdiServiceHost start= demand
    sc config NcbService start= demand
    sc config ndu start= demand
    sc config Netman start= demand
    sc config netprofm start= demand
    sc config WwanSvc start= demand
    sc config Dhcp start= auto
    sc config DPS start= auto
    sc config lmhosts start= auto
    sc config NlaSvc start= auto
    sc config nsi start= auto
    sc config RmSvc start= auto
    sc config Wcmsvc start= auto
    sc config Winmgmt start= auto
    sc config WlanSvc start= auto
    schtasks /Change /TN "Microsoft\Windows\WlanSvc\CDSSync" /Enable
    schtasks /Change /TN "Microsoft\Windows\WCM\WiFiTask" /Enable
    schtasks /Change /TN "Microsoft\Windows\NlaSvc\WiFiTask" /Enable
    schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Enable
    reg add "HKLM\Software\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /v "NoActiveProbe" /t REG_DWORD /d "0" /f
    reg add "HKLM\System\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "1" /f
    reg add "HKLM\System\CurrentControlSet\Services\BFE" /v "Start" /t REG_DWORD /d "2" /f
    reg add "HKLM\System\CurrentControlSet\Services\Dnscache" /v "Start" /t REG_DWORD /d "2" /f
    reg add "HKLM\System\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "3" /f
    net start DPS
    net start nsi
    net start NlaSvc
    net start Dhcp
    net start Wcmsvc
    net start RmSvc
    wmic path win32_networkadapter where index=0 call disable
    wmic path win32_networkadapter where index=1 call disable
    wmic path win32_networkadapter where index=2 call disable
    wmic path win32_networkadapter where index=3 call disable
    wmic path win32_networkadapter where index=4 call disable
    wmic path win32_networkadapter where index=5 call disable
    wmic path win32_networkadapter where index=0 call enable
    wmic path win32_networkadapter where index=1 call enable
    wmic path win32_networkadapter where index=2 call enable
    wmic path win32_networkadapter where index=3 call enable
    wmic path win32_networkadapter where index=4 call enable
    wmic path win32_networkadapter where index=5 call enable
    arp -d *
    route -f
    nbtstat -R
    nbtstat -RR
    netcfg -d
    netsh winsock reset
    netsh int 6to4 reset all
    netsh int httpstunnel reset all
    netsh int ip reset
    netsh int isatap reset all
    netsh int portproxy reset all
    netsh int tcp reset all
    netsh int teredo reset all
    netsh branchcache reset
    ipconfig /release
    ipconfig /renew
    sc config WlanSvc start= auto
    sc config Wcmsvc start= auto
    echo Wifi turned on successfully.
    timeout 1 > nul 
    goto :Skipwifi
) else if "%option%"=="2" (
    echo.
    echo Skipping...
    timeout 1 > nul 
    goto :Skipwifi
)

:: (Quaked) Network Tweaks Start Screen.
:Skipwifi
@echo off
cls
color 9
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.                               ███╗   ██╗███████╗████████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗
echo.                               ████╗  ██║██╔════╝╚══██╔══╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝
echo.                               ██╔██╗ ██║█████╗     ██║   ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ 
echo.                               ██║╚██╗██║██╔══╝     ██║   ██║███╗██║██║   ██║██╔══██╗██╔═██╗ 
echo.                               ██║ ╚████║███████╗   ██║   ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗
echo.                               ╚═╝  ╚═══╝╚══════╝   ╚═╝    ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
echo.                                                              
echo.                                   ████████╗██╗    ██╗███████╗ █████╗ ██╗  ██╗███████╗           
echo.                                   ╚══██╔══╝██║    ██║██╔════╝██╔══██╗██║ ██╔╝██╔════╝           
echo.                                      ██║   ██║ █╗ ██║█████╗  ███████║█████╔╝ ███████╗           
echo.                                      ██║   ██║███╗██║██╔══╝  ██╔══██║██╔═██╗ ╚════██║           
echo.                                      ██║   ╚███╔███╔╝███████╗██║  ██║██║  ██╗███████║           
echo.                                      ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝           
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║             Version 1.0 - By Quaked                ║       
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                          
echo Do you want to tweak your network settings?
chcp 437 >nul
powershell -Command "Write-Host 'Can cause connection issues, so be cautious. (Wouldn''t Recommend)' -ForegroundColor White -BackgroundColor Red"
powershell -Command "Write-Host 'Will have to system restore if it doesn't work as it's network driver dependant' -ForegroundColor White -BackgroundColor Red"
set /p choice=Enter (Y/N): 
if /i "%choice%"=="Y" (
    echo Running Quaked's Networks Tweaks 
    timeout 2 > nul
    cls
    goto :NetworkTweaks
) else if /i "%choice%"=="N" ( 
    echo Skipping Quaked's Networks Tweaks...
    timeout 2 > nul
    cls
    goto :SkipNetworkTweaks
)

:: (Quaked) Network Tweaks.
:NetworkTweaks
cls
color D
chcp 437 >nul

setlocal

echo Detecting Network Adapter...

for /f "skip=1 delims=" %%a in ('wmic nic where "NetConnectionStatus=2" get NetConnectionID /value 2^>nul') do (
    for /f "tokens=2 delims==" %%b in ("%%a") do (
        set "adapter_name=%%b"
    )
)

if defined adapter_name (
    echo Your current network adapter is: %adapter_name%
    echo.
    echo Quaked Tweaking Network Settings...
    echo Credit to Mathako for helping!
    powershell -Command "Write-Host 'This might take awhile, as the changes suppressed and nulled.' -ForegroundColor White -BackgroundColor Red"
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Flow Control' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Gigabit Master Slave Mode' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'IPv4 Checksum Offload' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Jumbo Packet' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Large Send Offload V2 (IPv4)' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Large Send Offload V2 (IPv6)' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Log Link State Event' | Set-NetAdapterAdvancedProperty -RegistryValue 16" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Maximum Number of RSS Queues' | Set-NetAdapterAdvancedProperty -RegistryValue 4" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Packet Priority & VLAN' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Receive Buffers' | Set-NetAdapterAdvancedProperty -RegistryValue 512" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'TCP Checksum Offload (IPv4)' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'TCP Checksum Offload (IPv6)' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Transmit Buffers' | Set-NetAdapterAdvancedProperty -RegistryValue 512" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'UDP Checksum Offload (IPv4)' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'UDP Checksum Offload (IPv6)' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Wait for Link' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Advanced EEE' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'ARP Offload' | Set-NetAdapterAdvancedProperty -RegistryValue 1" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Energy-Efficent Ethernet' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Gitabit Lite' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Green Ethernet' | Set-NetAdapterAdvancedProperty -RegistryValue 0">nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'NS Offload' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Power Saving Mode' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Receive Side Scaling' | Set-NetAdapterAdvancedProperty -RegistryValue 1" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Shutdown Wake-On-Lan' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Priority & VLAN' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Wake on Magic Packet' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Wake on magic packet when system is in the S0ix power state' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Wake on pattern match' | Set-NetAdapterAdvancedProperty -RegistryValue 0" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'WOL & Shutdown Link Speed' | Set-NetAdapterAdvancedProperty -RegistryValue 2" >nul 2>&1 
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Jumbo Packet' | Set-NetAdapterAdvancedProperty -RegistryValue 1514" >nul 2>&1
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Jumbo Frame' | Set-NetAdapterAdvancedProperty -RegistryValue 1514" >nul 2>&1
    echo Network Settings appiled successfully.
) else (
    echo Unable to detect your current network adapter.
    timeout 2 > nul
)

endlocal
timeout 2 > nul

:: (Quaked) Dns Selection.
:SkipNetworkTweaks
cls
chcp 65001 >nul 2>&1
color 9
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                 ██████╗ ███╗   ██╗███████╗
echo.                                                 ██╔══██╗████╗  ██║██╔════╝
echo.                                                 ██║  ██║██╔██╗ ██║███████╗
echo.                                                 ██║  ██║██║╚██╗██║╚════██║
echo.                                                 ██████╔╝██║ ╚████║███████║
echo.                                                 ╚═════╝ ╚═╝  ╚═══╝╚══════╝
echo. 
echo.                                 ╔══════════════════════════════════════════════════════╗
echo.                                 ║ Switching dns may or may not lead to better results  ║
echo.                                 ║             Skipping this is advised!                 ║
echo.                                 ╚══════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo Choose an option
chcp 437 >nul
powershell -Command "Write-Host '1. DNS Jumper, Recommended!' -ForegroundColor White -BackgroundColor Red"
echo 2. Google Dns
echo 3. Cloudflare Dns
echo 4. Skip!

set /p option="Enter option number: "

REM Get the active network interface using PowerShell
for /f "usebackq tokens=*" %%i in (`powershell "(Get-NetAdapter | Where-Object {$_.Status -eq 'Up'}).Name"`) do (
    set "interface=%%i"
)

if "%option%"=="1" (
    set "fileURL=https://github.com/QuakedK/Downloads/raw/main/DnsJumper.exe"
    set "fileName=DnsJumper.exe" 
    set "fileURL2=https://github.com/QuakedK/Downloads/raw/main/DnsJumper.ini"
    set "fileName2=DnsJumper.ini" 
) else if "%option%"=="2" (
    echo Setting DNS to Google...
    netsh interface ipv4 add dnsservers name="%interface%" address=8.8.8.8 index=1 >nul 2>&1
    netsh interface ipv4 add dnsservers name="%interface%" address=8.8.4.4 index=2 >nul 2>&1
    echo DNS set to Google successfully.
    timeout 2 > nul
    goto :SkipDns
) else if "%option%"=="3" (
    echo Setting DNS to Cloudflare...
    netsh interface ipv4 add dnsservers name="%interface%" address=1.1.1.1 index=1 >nul 2>&1
    netsh interface ipv4 add dnsservers name="%interface%" address=1.0.0.1 index=2 >nul 2>&1
    echo DNS set to Cloudflare successfully.
    timeout 2 > nul
    goto :SkipDns
) else if "%option%"=="4" (
    echo Skipping DNS configuration.
    timeout 2 > nul
    goto :SkipDns
) 

set "downloadsFolder=%USERPROFILE%\Downloads"
chcp 65001 >nul 2>&1
echo.
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝
chcp 437 >nul
curl -s -L "%fileURL%" -o "%downloadsFolder%\%fileName%"
curl -s -L "%fileURL2%" -o "%downloadsFolder%\%fileName2%"
if exist "%downloadsFolder%\%fileName%" (
    echo Download successful!
    if "%option%"=="1" (
        cls
        echo Starting DnsJumper...
        echo.
        start "" "%USERPROFILE%\Downloads\DnsJumper.exe"
        echo Click "fastest Dns" and then "Start Dns Test"
        echo Then click apply dns and you're done!
        pause
    ) else (
        echo Skipping!
        timeout 1 > nul
        goto :SkipDns
    )
)

:: (Quaked) Cleanup and Defrag.
:SkipDns
cls
color D
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.                                 ██████╗ ██╗     ███████╗ █████╗ ███╗   ██╗██╗   ██╗██████╗ 
echo.                                 ██╔════╝██║     ██╔════╝██╔══██╗████╗  ██║██║   ██║██╔══██╗
echo.                                 ██║     ██║     █████╗  ███████║██╔██╗ ██║██║   ██║██████╔╝
echo.                                 ██║     ██║     ██╔══╝  ██╔══██║██║╚██╗██║██║   ██║██╔═══╝ 
echo.                                 ╚██████╗███████╗███████╗██║  ██║██║ ╚████║╚██████╔╝██║     
echo.                                  ╚═════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝     
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║ Running file CleanUp, Network CleanUp and Defrag.. ║       
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                          
timeout 2 > nul  

cls
chcp 437 >nul
color 9
echo (Quaked) Running File Cleanup...
del "%LocalAppData%\Microsoft\Windows\INetCache\." /s /f /q
del "%AppData%\Local\Microsoft\Windows\INetCookies\." /s /f /q
del "%temp%" /s /f /q
del "%AppData%\Discord\Cache\." /s /f /q
del "%AppData%\Discord\Code Cache\." /s /f /q
del "%ProgramData%\USOPrivate\UpdateStore" /s /f /q
del "%ProgramData%\USOShared\Logs" /s /f /q
del "C:\Windows\System32\SleepStudy" /s /f /q
rmdir /S /Q "%AppData%\Local\Microsoft\Windows\INetCache\"
rmdir /S /Q "%AppData%\Local\Microsoft\Windows\INetCookies"
rmdir /S /Q "%LocalAppData%\Microsoft\Windows\WebCache"
rmdir /S /Q "%AppData%\Local\Temp\"
rd "%AppData%\Discord\Cache" /s /q
rd "%AppData%\Discord\Code Cache" /s /q
rd "%SystemDrive%\$GetCurrent" /s /q
rd "%SystemDrive%\$SysReset" /s /q
rd "%SystemDrive%\$Windows.~BT" /s /q
rd "%SystemDrive%\$Windows.~WS" /s /q
rd "%SystemDrive%\$WinREAgent" /s /q
rd "%SystemDrive%\OneDriveTemp" /s /q
del "%WINDIR%\Logs" /s /f /q
del "%WINDIR%\Installer\$PatchCache$" /s /f /q
rd /s /q %LocalAppData%\Temp
rd /s /q %LocalAppData%\Temp\mozilla-temp-files
rmdir /s /q "%SystemRoot%\System32\SleepStudy"
rmdir /s /q "%SystemRoot%\System32\SleepStudy >nul 2>&1"
Del /S /F /Q %temp%
Del /S /F /Q %Windir%\Temp
Del /S /F /Q C:\WINDOWS\Prefetch
echo File Cleanup completed successfully ...
timeout 2 > nul

cls
color D
echo (Quaked) Running Network Cleanup...
ipconfig /release
ipconfig /renew
arp -d *
nbtstat -R
nbtstat -RR
ipconfig /flushdns
ipconfig /registerdns
echo Network Cleanup completed successfully ...
timeout 2 > nul

:: (Quaked) Defrag.
cls
chcp 65001 >nul 2>&1
color 9
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo. 
echo.                          ╔══════════════════════════════════════════════════════════════════════╗
echo.                          ║                         (Defagging Drives)                           ║
echo.                          ║In layman's terms It basically cleans and may speed up your hard drive║
echo.                          ║ But It could take 10-20 mins, if this is your first time defragging. ║
echo.                          ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.
echo.
echo. 
echo. 
chcp 437 >nul
powershell -Command "Write-Host 'Reminder, Might Take a while' -ForegroundColor White -BackgroundColor Red"
echo Do you want to defrag drives?

set /p choice=Enter (Y/N): 

if /i "%choice%"=="Y" (
    echo Running Drive Defragmentation...
    echo -----------------------------
    
    Defrag C: /o
    Defrag C: /x
    
    Defrag D: /o >nul 2>&1
    Defrag D: /x >nul 2>&1
    
    Defrag E: /o >nul 2>&1
    Defrag E: /x >nul 2>&1
    
    Defrag F: /o >nul 2>&1
    Defrag F: /x >nul 2>&1
    
    echo Drive defragmentation completed successfully.
) else (
    echo Drive defragmentation skipped. No changes were made.
)
pause

:: (Quaked) Discord
cls
color D
echo Going to Quaked Tweaks Discord...
start https://discord.com/invite/h5fXfmBKey
timeout 2 > nul

:: System Restart/Reboot.
cls
color 9
choice /c:R /n /m "Press R to reboot/restart your PC and apply all tweaks successfully: "
if errorlevel 1 (
    echo You pressed R. Rebooting...
    shutdown /r /t 0
) else (
    echo You didn't press R. 
    echo Please manually restart your pc!
    pause
)













































