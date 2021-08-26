@echo off
Set KeyToSet=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel\

Set ThisPCGuid={20D04FE0-3AEA-1069-A2D8-08002B30309D}

Set HideIconValue=0
Set ShowIconValue=0

REG ADD %KeyToSet% /v %ThisPCGuid% /t REG_DWORD /d %ShowIconValue% /f

taskkill /F /IM explorer.exe
start explorer 

del %0