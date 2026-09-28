netsh Int tcp set global dca=enabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global timestamps=disabled
netsh int tcp set global fastopen=enabled
netsh int tcp set global fastopenfallback=enabled                                                        This file created by setro and its not for sell Its for free

netsh Int tcp set global netdma=enabled
netsh interface tcp set global ecncapability=disabled
netsh int tcp set global rsc=disabled
netsh int tcp set global chimney=enabled
netsh Int tcp set global maxsynretransmissions=5
wmic process where name="svchost.exe" CALL setpriority "normal"
netsh int tcp set global ecncapability=enabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int ip set global icmpredirects=disabled
netsh int tcp set supplemental internet congestionprovider=ctcp
netsh int isatap set state disable
netsh winsock set autotuning on
netsh int ip set global neighborcachelimit=4096
netsh int tcp set global hystart=disabled
netsh int tcp set supplemental template=custom icw=10
netsh int tcp set global hystart=disabled 
netsh int tcp set heuristics wsh=disabled
netsh int ip set global mldlevel=none
netsh int ip set global neighborcachelimit=4096
netsh int ip set global routecachelimit=4096
netsh int ip set global sourceroutingbehavior=drop
netsh int ip set global icmpredirects=disabled
netsh int ip set global multicastforwarding=disabled
netsh int ip set global taskoffload=disabled
netsh int ip set global dhcpmediasense=enabled
netsh interface teredo set state disabled 
for /f "tokens=3*" %%s in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards" /f "ServiceName" /s^|findstr /i /l "ServiceName"') do (
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%s" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
 	reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%s" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
 	reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%s" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f
	reg.add "HKLM\SYSTEM\CurrentControlSet\Services\Psched\Parameters\Adapters\%%s" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%s" /v "TcpInitialRTT" /t REG_DWORD /d "0" /f 
	reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%s" /v "DeadGWDetectDefault" /t REG_DWORD /d "1" /f
)
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "17424" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "explorer.exe" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "iexplorer.exe" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\Software\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "explorer.exe" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\Software\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "iexplore.exe" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v LocalPriority /t REG_DWORD /d 4 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v HostsPriority /t REG_DWORD /d 5 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v DnsPriority /t REG_DWORD /d 6 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v NetbtPriority /t REG_DWORD /d 7 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters\Probe\{e97ca175-e5e7-4580-895e-91be966166ba}" /v "LastProbeTime" /t REG_DWORD /d "1500872066" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters\Probe\{e97ca175-e5e7-4580-895e-91be966166ba}" /v "NetworkPerformsHijacking" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "NonBlockingSendSpecialBuffering" /t REG_DWORD /d "1" /f
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Ethernet" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Ethernet 2" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Ethernet 2" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Ethernet 3" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Ethernet 3" mtu=1500 store=persistent
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "Size" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /v "AssignmentSetOverride" /t REG_BINARY /d "02" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePolicy" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Enum\%%n\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MessageNumberLimit" /t REG_DWORD /d "256" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "CopyBufferSize" /t REG_DWORD /d "65536" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ADF\Parameters" /v "EnableDynamicBacklog" /t REG_DWORD /d "1" /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v DisableTaskOffload /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched /v TimerResolution /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched /v NonBestEffortLimit /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched /v MaxOutstandingSends /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DNScache\Parameters" /v "ServerPriorityTimeLimit" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "Size" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v MaxUserPort /t REG_DWORD /d 65534 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TcpTimedWaitDelay /t REG_DWORD /d 30 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DisableRawSecurity" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\Software\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "NonBlockingSendSpecialBuffering" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "IgnorePushBitOnReceives" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxConnectRetransmissions" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v Tcp1323Opts /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v GlobalMaxTcpWindowSize /t REG_DWORD /d 256960 /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MaxSockAddrLength" /t REG_DWORD /d "16" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeBestEffort" /t REG_DWORD /d "99" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeQualitative" /t REG_DWORD /d "99" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "MaxFastCopyTransmit" /t REG_DWORD /d "296" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "MaxFastTransmit" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "TransmitWorker" /t REG_DWORD /d "50" /f
reg add "HKLM\System\CurrentControlSet\Services\AFD\Parameters" /v "DoNotHoldNicBuffers" /t REG_DWORD /d "1" /f 
reg add "HKLM\System\CurrentControlSet\Services\AFD\Parameters" /v "DisableRawSecurity" /t REG_DWORD /d "1" /f 
reg add "HKLM\System\CurrentControlSet\Services\AFD\Parameters" /v "DisableAddressSharing" /t REG_DWORD /d "1" /f 
reg add "HKLM\System\CurrentControlSet\Services\AFD\Parameters" /v "DisableChainedReceive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v DisableDynamicDiscovery /t REG_DWORD /d 0 /f 
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\BITS" /v "EnableBITSMaxBandwidth" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /t REG_DWORD /d "0" /f \
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeGuaranteed" /t REG_DWORD /d "99" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "MaxOutstandingSends" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPCongestionControl" /t REG_DWORD /d "00000001" /f 
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "PeerCachingLatencyThreshold" /t REG_DWORD /d "268435456" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PeerDist\Service" /v "Enable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\ControlSet001\Services\Psched" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters\Security" /v "SecureDSCommunication" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxHashTableSize" /t REG_DWORD /d "00010000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableConnectionRateLimiting" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnablePMTUBHDetect" /t REG_DWORD /d "00000000" /f
Reg.exe add "HKLM\System\ControlSet001\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v "MIMOPowerSaveMode" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\ControlSet001\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v "PowerSavingMode" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\ControlSet001\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\ControlSet001\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v "*EEE" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\ControlSet001\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v "PnPCapabilities" /t REG_DWORD /d "24" /f
Reg.exe add "HKLM\System\ControlSet001\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0002" /v "MIMOPowerSaveMode" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\ControlSet001\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0002" /v "PowerSavingMode" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\ControlSet001\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0002" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\ControlSet001\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0002" /v "*EEE" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\ControlSet001\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0002" /v "PnPCapabilities" /t REG_DWORD /d "24" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePageCombining" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "2000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f 
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ExtendedUIHoverTime" /t REG_DWORD /d "196608" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DontPrettyPath" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "UseDelayedAcceptance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "HelperDllName" /t REG_EXPAND_SZ /d "%%SystemRoot%%\System32\wshtcpip.dll" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MaxSockAddrLength" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MinSockAddrLength" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "Mapping" /t REG_BINARY /d "0b00000003000000020000000100000006000000020000000100000000000000020000000000000006000000000000000000000006000000000000000100000006000000020000000200000011000000020000000200000000000000020000000000000011000000000000000000000011000000000000000200000011000000020000000300000000000000" /f