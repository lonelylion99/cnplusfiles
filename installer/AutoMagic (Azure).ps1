<# Hiding Download Progress #>
$ProgressPreference = 'SilentlyContinue';


<# Adding This PC Icon #>
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Removing%20Recycle%20Bin.bat' -OutFile 'C:\Users\azureuser\Documents\Removing Recycle Bin.bat'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Adding%20This%20PC.bat' -OutFile 'C:\Users\azureuser\Documents\Adding This PC.bat'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Adding%20Recycle%20Bin.bat' -OutFile 'C:\Users\azureuser\Documents\Adding Recycle Bin.bat'; Invoke-Item 'C:\Users\azureuser\Documents\Removing Recycle Bin.bat'; Start-Sleep -s 1; Invoke-Item 'C:\Users\azureuser\Documents\Adding This PC.bat'; Start-Sleep -s 1; Invoke-Item 'C:\Users\azureuser\Documents\Adding Recycle Bin.bat'; Start-Sleep -s 1;


<# Installing CountDown Gadget #>
$LocalTempDir = $env:TEMP; $GadgetsInstaller = "GadgetsInstaller.exe"; (new-object System.Net.WebClient).DownloadFile('https://cnplus-stream.herokuapp.com/276', "$LocalTempDir\$GadgetsInstaller"); & "$LocalTempDir\$GadgetsInstaller" /silent /install; $Process2Monitor = "GadgetsInstaller"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$GadgetsInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound); Set-MpPreference -DisableRealtimeMonitoring $true; wget https://cnplus-stream.herokuapp.com/277 -O "C:\Users\azureuser\Documents\CountDown.gadget"; Stop-Process -Name "sidebar"; Invoke-Item "C:\Users\azureuser\Documents\CountDown.gadget"; $wshell = New-Object -ComObject wscript.shell; $wshell.AppActivate('Desktop Gadgets - Security Warning'); Sleep 1; $wshell.SendKeys('{LEFT}');  Start-Sleep -s 1; $wshell.SendKeys('~'); 


<# Installing Choco #>
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')); choco feature enable -n allowGlobalConfirmation;


<# Installing IDM #>
choco install internet-download-manager; Stop-Process -name "javaw"; Start-Process "C:\Program Files (x86)\Internet Download Manager\IDMan.exe" -Verb RunAs; Start-Sleep -s 1; $wshell = New-Object -ComObject wscript.shell; $wshell.AppActivate('2Dto3D.exe - Application Error'); Sleep 1; $wshell.SendKeys('~'); $wshell = New-Object -ComObject wscript.shell; $wshell.AppActivate('Integration into Microsoft Edge browser'); Sleep 1; $wshell.SendKeys('~');  Start-Sleep -s 1; $wshell.SendKeys("^{Esc}"); Start-Sleep -s 1; $wshell.SendKeys("^{Esc}"); $wshell.AppActivate('IDM'); Sleep 1; $wshell.SendKeys('~'); Start-Sleep -s 1; $wshell.AppActivate('Tip of the Day'); Sleep 1; $wshell.SendKeys('~');  Start-Sleep -s 1; $wshell.AppActivate('Internet Download Manager 6.40'); Sleep 1; $wshell.SendKeys('%{F4}'); Start-Sleep -s 1; 


<# Installing LosslessCut #>
Invoke-WebRequest -Uri 'https://github.com/mifi/lossless-cut/releases/download/v3.37.0/LosslessCut-win.exe' -OutFile 'C:\Users\azureuser\Desktop\LosslessCut.exe'; 


<# Installing Google Drive #>
choco install google-drive-file-stream; $wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('~'); Remove-Item "C:\Users\azureuser\Desktop\Google Docs.*", "C:\Users\azureuser\Desktop\Google Sheets.*", "C:\Users\azureuser\Desktop\Google Slides.*"; $wshell.AppActivate('Sign in to Google Drive'); Sleep 1; $wshell.SendKeys('~');


<# Installing Telegram #>
$LocalTempDir = $env:TEMP; $TelegramInstaller = "TelegramInstaller.exe"; (new-object System.Net.WebClient).DownloadFile('https://telegram.org/dl/desktop/win64', "$LocalTempDir\$TelegramInstaller"); & "$LocalTempDir\$TelegramInstaller" /silent /install; $Process2Monitor = "TelegramInstaller"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$TelegramInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound); $ProgressPreference = 'SilentlyContinue'; 


<# Unpinning Edge #>
function Unpin-App([string]$appname) {((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Unpin from taskbar'} | %{$_.DoIt()}}; Unpin-App("Microsoft Edge"); 


<# Installing Fonts #>
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Install Fonts (azure).zip' -OutFile 'C:\Users\azureuser\Documents\Install Fonts (azure).zip'; Expand-Archive -LiteralPath 'C:\Users\azureuser\Documents\Install Fonts (azure).zip' -DestinationPath C:\Users\azureuser\Documents; powershell.exe -executionpolicy Bypass -nologo -noninteractive -file "C:\Users\azureuser\Documents\Install Fonts\Install_Fonts.ps1"; Remove-Item "C:\Users\azureuser\Documents\Install Fonts (azure).zip", "C:\Users\azureuser\Documents\Install Fonts" -Force -Recurse;


<# Opening Default Apps #>
Start-Process "ms-settings:defaultapps";
