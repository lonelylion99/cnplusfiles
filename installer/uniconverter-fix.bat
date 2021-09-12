@echo off

taskkill /IM VideoConverterUltimate.exe /F
PowerShell Set-MpPreference -DisableRealtimeMonitoring $true
PowerShell Set-MpPreference -DisableRealtimeMonitoring $false
START "C:\Program Files\Wondershare\UniConverter\WondershareConverterUltimate.exe"
