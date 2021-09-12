@echo off

taskkill /IM VideoConverterUltimate.exe /F
PowerShell Set-MpPreference -DisableRealtimeMonitoring $true
timeout /t 3 /nobreak
PowerShell Set-MpPreference -DisableRealtimeMonitoring $false
