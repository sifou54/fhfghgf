@echo off

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Wcmsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1

exit