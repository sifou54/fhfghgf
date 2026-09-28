@echo off
title Orca V3
color 9

:: (Quaked) Orca Start Screen.
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
echo.                                           ▒█████   ██▀███   ▄████▄   ▄▄▄      
echo.                                          ▒██▒  ██▒▓██ ▒ ██▒▒██▀ ▀█  ▒████▄    
echo.                                          ▒██░  ██▒▓██ ░▄█ ▒▒▓█    ▄ ▒██  ▀█▄  
echo.                                          ▒██   ██░▒██▀▀█▄  ▒▓▓▄ ▄██▒░██▄▄▄▄██ 
echo.                                          ░ ████▓▒░░██▓ ▒██▒▒ ▓███▀ ░ ▓█   ▓██▒
echo.                                          ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░░ ░▒ ▒  ░ ▒▒   ▓▒█░
echo.                                          ░ ▒ ▒░   ░▒ ░ ▒░  ░  ▒     ▒   ▒▒ ░
echo.                                          ░ ░ ░ ▒    ░░   ░ ░          ░   ▒   
echo.                                              ░ ░     ░     ░ ░            ░  ░
echo.                                                              ░                  
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║             Version 3.0 - By Quaked                ║
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

:: (Quaked) Section 1: Disabling UpdateOrchestrator Tasks.
cls
color D
echo Disabling UpdateOrchestrator Tasks 1/19...
schtasks /Change /TN "MicrosoftEdgeUpdateTaskMachineUA" /Disable
schtasks /Change /TN "MicrosoftEdgeUpdateTaskMachineCore" /Disable
schtasks /Change /TN "OneDrive Reporting Task-S-1-5-21-2240390734-3588247625-2595490332-1001" /Disable >nul 2>&1
schtasks /Change /TN "OneDrive Standalone Update Task-S-1-5-21-2240390734-3588247625-2595490332-1001" /Disable >nul 2>&1
schtasks /Change /TN "update-S-1-5-21-2240390734-3588247625-2595490332-1001" /Disable >nul 2>&1
schtasks /Change /TN "update-sys" /Disable >nul 2>&1
schtasks /Change /TN "\Microsoft\Windows\UNP\RunUpdateNotificationMgr" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Maintenance Work" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Wake To Work" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Work" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Start Oobe Expedite Work" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Report policies" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\StartOobeAppsScan_LicenseAccepted" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\StartOobeAppsScanAfterUpdate" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /Disable
schtasks /Change /TN "\Microsoft\Windows\UpdateOrchestrator\UUS Failover Task" /Disable
echo UpdateOrchestrator Tasks disabled successfully.
timeout 2 > nul 

:: (Quaked) Section 2: Deleting UpdateOrchestrator Tasks.
cls
color 9
echo Now Deleting UpdateOrchestrator Tasks 2/19...
schtasks /Delete /TN "MicrosoftEdgeUpdateTaskMachineUA" /F
schtasks /Delete /TN "MicrosoftEdgeUpdateTaskMachineCore" /F
schtasks /Delete /TN "OneDrive Reporting Task-S-1-5-21-2240390734-3588247625-2595490332-1001" /F >nul 2>&1
schtasks /Delete /TN "OneDrive Standalone Update Task-S-1-5-21-2240390734-3588247625-2595490332-1001" /F >nul 2>&1
schtasks /Delete /TN "update-S-1-5-21-2240390734-3588247625-2595490332-1001" /F >nul 2>&1
schtasks /Delete /TN "update-sys" /F >nul 2>&1
schtasks /Delete /TN "\Microsoft\Windows\UNP\RunUpdateNotificationMgr" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Maintenance Work" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Wake To Work" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Work" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\Start Oobe Expedite Work" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\Report policies" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\StartOobeAppsScan_LicenseAccepted" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\StartOobeAppsScanAfterUpdate" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /F
schtasks /Delete /TN "\Microsoft\Windows\UpdateOrchestrator\UUS Failover Task" /F
echo UpdateOrchestrator Tasks Deleted successfully.
timeout 2 > nul 

:: (Quaked) Section 3: Deleting UpdateOrchestrator Tasks.
cls
color D
@echo off
echo Removing UsoCoreWorker and It's Paths 3/19...
CD /D %HOMEDRIVE%%HOMEPATH%\Desktop
echo %CD%

REM ************ Main process *****************

set "usoClientFileToDelete=C:\Windows\System32\UsoClient.exe"
set "usoCoreWorkerFileToDelete=C:\Windows\UUS\amd64\MoUsoCoreWorker.exe"

REM Deleting UsoClient if exists
if exist "%usoClientFileToDelete%" (
    echo *** Taking ownership of the file ***
    takeown /F "%usoClientFileToDelete%"
    
    echo *** Adjusting permissions ***
    icacls "%usoClientFileToDelete%" /grant administrators:F

    echo *** Removing UsoClient ***
    del "%usoClientFileToDelete%" /f /q
    echo File deleted successfully.
) else (
    echo File not found: %usoClientFileToDelete%
)

REM Deleting MoUsoCoreWorker if exists
if exist "%usoCoreWorkerFileToDelete%" (
    echo *** Taking ownership of the file ***
    takeown /F "%usoCoreWorkerFileToDelete%"
    
    echo *** Adjusting permissions ***
    icacls "%usoCoreWorkerFileToDelete%" /grant administrators:F

    echo *** Removing MoUsoCoreWorker ***
    del "%usoCoreWorkerFileToDelete%" /f /q
    echo File deleted successfully.
) else (
    echo File not found: %usoCoreWorkerFileToDelete%
)

timeout 2 > nul 

:: (Quaked) Section 4: Deleting Mircosoft Edge.
cls
color 9
echo (Quaked) Removing Microsoft Edge 4/19...
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
 
:: (Quaked) Section 5: Disabling More Services.
cls
color D
echo Disabling More Services 5/19...
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

:: (PiF) Section 6: Disable Unnecessary Services and Tasks.
cls
color 9
chcp 437 >nul
echo (PiF) Disable Unnecessary Services and Tasks 6/19...
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

:: (PiF) Section 7: Disabling Windows Update and Store Services and Tasks.
cls
color D
echo (PiF) Disabling Windows Update and Store Services and Tasks 7/19...
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

:: (PiF) Section 8: Disabling Remote Services and Tasks.
cls
color 9
echo (PiF) Disabling Remote Services and Tasks 8/19...
sc config RemoteRegistry start= disabled
sc config RemoteAccess start= disabled
sc config WinRM start= disabled
sc config RmSvc start= disabled
echo Remote Services and Tasks disabled successfully.
timeout 2 > nul


:: (PiF) Section 9: Disabling Printer Services and Tasks.
cls
color D
echo (PiF) Disabling Printer Services and Tasks 9/19...
sc config PrintNotify start= disabled
sc config Spooler start= disabled
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /Disable
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /Disable
echo Printer Services and Tasks disabled successfully.
timeout 2 > nul

:: (PiF) Section 10: Disabling Bluetooth Services and Tasks.
cls
color 9
echo (PiF) Disabling Bluetooth Services and Tasks 10/19...
sc config PrintNotify start= disabled
sc config Spooler start= disabled
schtasks /Change /TN "Microsoft\Windows\Printing\EduPrintProv" /Disable
schtasks /Change /TN "Microsoft\Windows\Printing\PrinterCleanupTask" /Disable
echo Bluetooth Services and Tasks disabled successfully.
timeout 2 > nul

:: (PiF) Section 11: Disabling Wifi Services and Tasks.
cls
color D
echo (PiF) Disabling Wifi Services and Tasks 11/19...
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

:: (Quaked) Section 12: Disabling Bloatware Services.
cls
color 9
echo (Quaked) Disabling Bloatware Services 12/19...
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

:: (Quaked) Section 13: Disabling Cpu Bloatware.
cls
color 9
echo (Quaked) Disabling Cpu Bloatware 13/19...
sc config NcbService start=disabled >nul 2>&1
sc config jhi_service start=disabled >nul 2>&1
sc config WMIRegistrationService start=disabled >nul 2>&1
sc config "Intel(R) TPM Provisioning Service" start=disabled >nul 2>&1
sc config ipfsvc start=disabled >nul 2>&1
sc config igccservice start=disabled >nul 2>&1
sc config cplspcon start=disabled >nul 2>&1
sc config AMD Crash Defender Service start=disabled >nul 2>&1
sc config AMD External Events Utility start=disabled >nul 2>&1
sc config AUEPLauncher start=disabled >nul 2>&1
echo AMD Bloat disabled successfully.
timeout 2 > nul

:: (Quaked) Section 14: Disabling Extra Tasks....
cls
color 9
echo (Quaked) Disabling Extra Tasks 14/19...
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


:: (Quaked) Section 15: Deleting Extra Tasks....
cls
color D
echo (Quaked) Deleting Extra Tasks 15/19...
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

:: (Quaked) Section 16: File Cleanup
cls
color D
echo (Quaked) Running File Cleanup 16/19...
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

:: (Quaked) Section 17: Network Cleanup
cls
color 9
echo (Quaked) Running Network Cleanup 17/19...
ipconfig /release
ipconfig /renew
arp -d *
nbtstat -R
nbtstat -RR
ipconfig /flushdns
ipconfig /registerdns
echo Network Cleanup completed successfully ...
timeout 2 > nul

:: (Quaked) Section 18: Defrag
cls
color D
@echo off
echo Running Defrag 18/19...
echo -----------------------------
Defrag C: /o
Defrag C: /x
    
Defrag D: /o >nul 2>&1
Defrag D: /x >nul 2>&1
    
Defrag E: /o >nul 2>&1
Defrag E: /x >nul 2>&1
    
Defrag F: /o >nul 2>&1
Defrag F: /x >nul 2>&1
timeout 2 > nul

:: (Quaked) Section 19: System Restart/Reboot.
cls
color 9
@echo off
choice /c:R /n /m "Press R to reboot/restart your PC and apply all tweaks successfully 19/19: "
if errorlevel 1 (
    echo You pressed R. Rebooting...
    shutdown /r /t 0
) else (
    echo You didn't press R. Exiting...
    pause
)
