@echo off

Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d "1" /f >nul 2>&1
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f >nul 2>&1

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1

schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /Disable >nul 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /Disable >nul 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\UpdateModelTask" /Disable >nul 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /Disable >nul 2>&1
schtasks /change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /Disable >nul 2>&1

exit