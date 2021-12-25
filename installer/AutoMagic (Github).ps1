<# Setting Chrome as Default #>
Start-Process "ms-settings:defaultapps"; Start-Sleep -s 1; $wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{TAB 5}'); Start-Sleep -s 1; $wshell.SendKeys('~'); Start-Sleep -s 1; $wshell.SendKeys('~'); Start-Sleep -s 1; $wshell.SendKeys('%{F4}'); 


<# Removing Unnecessary Desktop Icons #>
Remove-Item "C:\Users\*\Desktop\Fast Config VPS.*", "C:\Users\*\Desktop\Google Cloud SDK Shell.*", "C:\Users\*\Desktop\Firefox.*", "C:\Users\*\Desktop\Unity Hub.*", "C:\Users\*\Desktop\Microsoft Edge.*";


<# Hiding Download Progress #>
$ProgressPreference = 'SilentlyContinue';


<# Adding This PC Icon #>
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Removing%20Recycle%20Bin.bat' -OutFile 'C:\Users\henry\Documents\Removing Recycle Bin.bat'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Adding%20This%20PC.bat' -OutFile 'C:\Users\henry\Documents\Adding This PC.bat'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Adding%20Recycle%20Bin.bat' -OutFile 'C:\Users\henry\Documents\Adding Recycle Bin.bat'; Invoke-Item 'C:\Users\henry\Documents\Removing Recycle Bin.bat'; Start-Sleep -s 1; Invoke-Item 'C:\Users\henry\Documents\Adding This PC.bat'; Start-Sleep -s 1; Invoke-Item 'C:\Users\henry\Documents\Adding Recycle Bin.bat'; Start-Sleep -s 1;


<# Changing Wallpaper #>
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/night.jpg' -OutFile 'C:\Users\henry\Pictures\Wallpaper.bmp'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Wallpaper%20Changer.bat' -OutFile 'C:\Users\henry\Documents\Wallpaper Changer.bat'; Invoke-Item 'C:\Users\henry\Documents\Wallpaper Changer.bat'; Start-Sleep -s 1; Invoke-Item 'C:\Users\henry\Documents\Wallpaper Changer.bat'; Start-Sleep -s 1; Invoke-Item 'C:\Users\henry\Documents\Wallpaper Changer.bat'; Start-Sleep -s 1; Invoke-Item 'C:\Users\henry\Documents\Wallpaper Changer.bat'; Start-Sleep -s 1; Invoke-Item 'C:\Users\henry\Documents\Wallpaper Changer.bat'; Start-Sleep -s 1; Remove-Item "C:\Users\henry\Documents\Wallpaper Changer.bat"; 


<# Installing CountDown Gadget #>
$LocalTempDir = $env:TEMP; $GadgetsInstaller = "GadgetsInstaller.exe"; (new-object System.Net.WebClient).DownloadFile('https://cnplus-stream.herokuapp.com/276', "$LocalTempDir\$GadgetsInstaller"); & "$LocalTempDir\$GadgetsInstaller" /silent /install; $Process2Monitor = "GadgetsInstaller"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$GadgetsInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound); Set-MpPreference -DisableRealtimeMonitoring $true; wget https://cnplus-stream.herokuapp.com/277 -O "C:\Users\henry\Documents\CountDown.gadget"; Stop-Process -Name "sidebar"; Invoke-Item "C:\Users\henry\Documents\CountDown.gadget"; $wshell = New-Object -ComObject wscript.shell; $wshell.AppActivate('Desktop Gadgets - Security Warning'); Sleep 1; $wshell.SendKeys('{LEFT}');  Start-Sleep -s 1; $wshell.SendKeys('~'); 


<# Installing Choco #>
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')); choco feature enable -n allowGlobalConfirmation; 


<# Installing XDM #>
choco install xdm; 


<# Installing IDM #>
choco install internet-download-manager; Stop-Process -name "javaw"; Start-Process "C:\Program Files (x86)\Internet Download Manager\IDMan.exe" -Verb RunAs; Start-Sleep -s 1; $wshell = New-Object -ComObject wscript.shell; $wshell.AppActivate('2Dto3D.exe - Application Error'); Sleep 1; $wshell.SendKeys('~'); $wshell = New-Object -ComObject wscript.shell; $wshell.AppActivate('Integration into Microsoft Edge browser'); Sleep 1; $wshell.SendKeys('~');  Start-Sleep -s 1; $wshell.SendKeys("^{Esc}"); Start-Sleep -s 1; $wshell.SendKeys("^{Esc}"); $wshell.AppActivate('IDM'); Sleep 1; $wshell.SendKeys('~'); Start-Sleep -s 1; $wshell.AppActivate('Tip of the Day'); Sleep 1; $wshell.SendKeys('~');  Start-Sleep -s 1; $wshell.AppActivate('Internet Download Manager 6.40'); Sleep 1; $wshell.SendKeys('%{F4}'); Start-Sleep -s 1;


<# Installing 7zip #>
choco install 7zip.install;


<# Installing Google Drive #>
choco install google-drive-file-stream; $wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('~'); Remove-Item "C:\Users\henry\Desktop\Google Docs.*", "C:\Users\henry\Desktop\Google Sheets.*", "C:\Users\henry\Desktop\Google Slides.*"; $wshell.AppActivate('Sign in to Google Drive'); Sleep 1; $wshell.SendKeys('~');


<# Installing Telegram #>
$LocalTempDir = $env:TEMP; $TelegramInstaller = "TelegramInstaller.exe"; (new-object System.Net.WebClient).DownloadFile('https://telegram.org/dl/desktop/win64', "$LocalTempDir\$TelegramInstaller"); & "$LocalTempDir\$TelegramInstaller" /silent /install; $Process2Monitor = "TelegramInstaller"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$TelegramInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound); $ProgressPreference = 'SilentlyContinue'; 


<# Installing LosslessCut #>
Invoke-WebRequest -Uri 'https://github.com/mifi/lossless-cut/releases/download/v3.37.0/LosslessCut-win.exe' -OutFile 'C:\Users\henry\Desktop\LosslessCut.exe'; 


<# Unpining Internet Explorer from Taskbar #>
function Unpin-App([string]$appname) {((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Unpin from taskbar'} | %{$_.DoIt()}}; Unpin-App("Internet Explorer"); 


<# Unpinning Start Menu Shortcuts #>
function Pin-App {param([string]$appname,[switch]$unpin) try{if ($unpin.IsPresent){((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Von "Start" lösen|Unpin from Start'} | %{$_.DoIt()} return "App '$appname' unpinned from Start"}else{((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'An "Start" anheften|Pin to Start'} | %{$_.DoIt()}   return "App '$appname' pinned to Start"}}catch{Write-Error "Error Pinning/Unpinning App! (App-Name correct?)"}}; Pin-App "Server Manager" -unpin; Pin-App "Windows PowerShell" -unpin; Pin-App "Windows PowerShell ISE" -unpin; Pin-App "Windows Administrative Tools" -unpin; Pin-App "Task Manager" -unpin; Pin-App "Control Panel" -unpin; Pin-App "Remote Desktop Connection" -unpin; Pin-App "Event Viewer" -unpin; Pin-App "File Explorer" -unpin; $wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys("^{Esc}"); Start-Sleep -s 1; $wshell.SendKeys("^{Esc}");


<# Installing VB-Cable #>
choco install vb-cable; Start-Process 'C:\ProgramData\chocolatey\lib\vb-cable\tools\VBCABLE_Setup_x64';


<# Installing Fonts #>
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Install Fonts (Github RDP).zip' -OutFile 'C:\Users\henry\Documents\Install Fonts (Github RDP).zip'; Expand-Archive -LiteralPath 'C:\Users\henry\Documents\Install Fonts (Github RDP).zip' -DestinationPath C:\Users\henry\Documents; powershell.exe -executionpolicy Bypass -nologo -noninteractive -file "C:\Users\henry\Documents\Install Fonts\Install_Fonts.ps1"; Remove-Item "C:\Users\henry\Documents\Install Fonts (Github RDP).zip", "C:\Users\henry\Documents\Install Fonts" -Force -Recurse; 
