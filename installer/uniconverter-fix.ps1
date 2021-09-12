Stop-Process -Name "VideoConverterUltimate"
Set-MpPreference -DisableRealtimeMonitoring $true
Set-MpPreference -DisableRealtimeMonitoring $false
Start-Process "C:\Program Files\Wondershare\UniConverter\VideoConverterUltimate.exe"
