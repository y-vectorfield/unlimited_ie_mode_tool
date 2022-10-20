copy ie_mode_list.xml c:\
reg add "HKCU\SOFTWARE\Policies\Microsoft\Edge" /v InternetExplorerIntegrationLevel /t "REG_DWORD" /d "1" /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Edge" /v InternetExplorerIntegrationSiteList /t "REG_SZ" /d "c:\ie_mode_list.xml" /f
pause
