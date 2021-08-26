@echo off
Set KeyToSet=HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel\

Set RecycleBinGuid={645FF040-5081-101B-9F08-00AA002F954E}

Set HideIconValue=0
Set ShowIconValue=1

REG ADD %KeyToSet% /v %RecycleBinGuid% /t REG_DWORD /d %ShowIconValue% /f

taskkill /F /IM explorer.exe
start explorer 

del %0