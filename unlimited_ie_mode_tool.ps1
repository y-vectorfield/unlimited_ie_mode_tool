copy ie_mode_list.xml c:\
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v InternetExplorerIntegrationLevel /t "REG_DWORD" /d "1" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Edge" /v InternetExplorerIntegrationSiteList /t "REG_SZ" /d "c:\ie_mode_list.xml" /f
pause
