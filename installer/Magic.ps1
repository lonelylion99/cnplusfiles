Remove-Item "C:\Users\*\Desktop\Google Cloud SDK Shell.*"; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Removing%20Recycle%20Bin.bat' -OutFile 'C:\Users\kiyoe\Documents\Removing Recycle Bin.bat'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Adding%20This%20PC.bat' -OutFile 'C:\Users\kiyoe\Documents\Adding This PC.bat'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Adding%20Recycle%20Bin.bat' -OutFile 'C:\Users\kiyoe\Documents\Adding Recycle Bin.bat'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/6.jpg' -OutFile 'C:\Users\kiyoe\Pictures\Default.bmp'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Wallpaper%20Changer.bat' -OutFile 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat'; Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat'; Start-Sleep -s 1; Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat'; Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat'; Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat'; Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat'; Start-Sleep -s 1; Remove-Item "C:\Users\kiyoe\Documents\Wallpaper Changer.bat"; Invoke-Item 'C:\Users\kiyoe\Documents\Removing Recycle Bin.bat'; Start-Sleep -s 1; Invoke-Item 'C:\Users\kiyoe\Documents\Adding This PC.bat'; Start-Sleep -s 1; Invoke-Item 'C:\Users\kiyoe\Documents\Adding Recycle Bin.bat'; Start-Sleep -s 1; Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')); choco feature enable -n allowGlobalConfirmation; $LocalTempDir = $env:TEMP; $GadgetsInstaller = "GadgetsInstaller.exe"; (new-object System.Net.WebClient).DownloadFile('https://cnplus-storage.herokuapp.com/65', "$LocalTempDir\$GadgetsInstaller"); & "$LocalTempDir\$GadgetsInstaller" /silent /install; $Process2Monitor = "GadgetsInstaller"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$GadgetsInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound); Set-MpPreference -DisableRealtimeMonitoring $true; wget https://cnplus-storage.herokuapp.com/67 -O "C:\Users\kiyoe\Documents\CountDown.gadget"; Stop-Process -Name "sidebar"; Invoke-Item "C:\Users\kiyoe\Documents\CountDown.gadget"; $wshell = New-Object -ComObject wscript.shell; $wshell.AppActivate('Desktop Gadgets - Security Warning'); Sleep 1; $wshell.SendKeys('{LEFT}');  Start-Sleep -s 1; $wshell.SendKeys('~'); $LocalTempDir = $env:TEMP; $ChromeInstaller = "ChromeInstaller.exe"; (new-object System.Net.WebClient).DownloadFile('http://dl.google.com/chrome/install/375.126/chrome_installer.exe', "$LocalTempDir\$ChromeInstaller"); & "$LocalTempDir\$ChromeInstaller" /silent /install; $Process2Monitor = "ChromeInstaller"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$ChromeInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound); Start-Process "ms-settings:defaultapps"; Start-Sleep -s 1; $wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{TAB 5}'); Start-Sleep -s 1; $wshell.SendKeys('~'); Start-Sleep -s 1; $wshell.SendKeys('~'); Start-Sleep -s 1; $wshell.SendKeys('%{F4}'); Start-Process "C:\Program Files\Google\Chrome\Application\chrome.exe"; choco install xdm; choco install internet-download-manager; Stop-Process -name "javaw"; choco install 7zip.install; choco install google-drive-file-stream; $wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('~'); Remove-Item "C:\Users\kiyoe\Desktop\Google Docs.*", "C:\Users\kiyoe\Desktop\Google Sheets.*", "C:\Users\kiyoe\Desktop\Google Slides.*"; $LocalTempDir = $env:TEMP; $TelegramInstaller = "TelegramInstaller.exe"; (new-object System.Net.WebClient).DownloadFile('https://telegram.org/dl/desktop/win64', "$LocalTempDir\$TelegramInstaller"); & "$LocalTempDir\$TelegramInstaller" /silent /install; $Process2Monitor = "TelegramInstaller"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$TelegramInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound); $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri 'https://github.com/mifi/lossless-cut/releases/download/v3.37.0/LosslessCut-win.exe' -OutFile 'C:\Users\kiyoe\Desktop\LosslessCut.exe'; function Unpin-App([string]$appname) {
    ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() |
        ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Unpin from taskbar'} | %{$_.DoIt()}
}; Unpin-App("Internet Explorer"); function Pin-App {    param(
        [string]$appname,
        [switch]$unpin
    )
    try{
        if ($unpin.IsPresent){
            ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Von "Start" lösen|Unpin from Start'} | %{$_.DoIt()}
            return "App '$appname' unpinned from Start"
        }else{
            ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'An "Start" anheften|Pin to Start'} | %{$_.DoIt()}
            return "App '$appname' pinned to Start"
        }
    }catch{
        Write-Error "Error Pinning/Unpinning App! (App-Name correct?)"
    }
}; Pin-App "Server Manager" -unpin; Pin-App "Windows PowerShell" -unpin; Pin-App "Windows PowerShell ISE" -unpin
Pin-App "Windows Administrative Tools" -unpin; Pin-App "Task Manager" -unpin; Pin-App "Control Panel" -unpin; Pin-App "Remote Desktop Connection" -unpin; Pin-App "Event Viewer" -unpin; Pin-App "File Explorer" -unpin; $wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys("^{Esc}"); Start-Sleep -s 1; $wshell.SendKeys("^{Esc}"); Start-Process "C:\Program Files (x86)\Internet Download Manager\IDMan.exe" -Verb RunAs; choco install vb-cable; Start-Process 'C:\ProgramData\chocolatey\lib\vb-cable\tools\VBCABLE_Setup_x64'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Watermark.png' -OutFile 'C:\Users\kiyoe\Documents\Watermark.png'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Install Fonts.zip' -OutFile 'C:\Users\kiyoe\Documents\Install Fonts.zip'; Expand-Archive -LiteralPath 'C:\Users\kiyoe\Documents\Install Fonts.zip' -DestinationPath C:\Users\kiyoe\Documents; powershell.exe -executionpolicy Bypass -nologo -noninteractive -file "C:\Users\kiyoe\Documents\Install Fonts\Install_Fonts.ps1"; Remove-Item "C:\Users\kiyoe\Documents\Install Fonts.zip", "C:\Users\kiyoe\Documents\Install Fonts" -Force -Recurse; $LocalTempDir = $env:TEMP; $UniConverterInstaller = "UniConverterInstaller.exe"; (new-object System.Net.WebClient).DownloadFile('https://cnplus-storage.herokuapp.com/51', "$LocalTempDir\$UniConverterInstaller"); & "$LocalTempDir\$UniConverterInstaller" /silent /install; $Process2Monitor = "UniConverterInstaller"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$UniConverterInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound); Set-MpPreference -DisableRealtimeMonitoring $true; Invoke-WebRequest -Uri 'https://cnplus-storage.herokuapp.com/53' -OutFile 'C:\Program Files\Wondershare\UniConverter\Patcher.exe'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/uniconverter-fix.bat' -OutFile 'C:\Users\kiyoe\Documents\UniConverter Fix.bat'; Remove-Item "C:\Users\*\Desktop\Wondershare*"; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Wondershare UniConverter.lnk' -OutFile 'C:\Users\kiyoe\Desktop\Wondershare UniConverter.lnk'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/UniConverter Patcher.lnk' -OutFile 'C:\Users\kiyoe\Desktop\UniConverter Patcher.lnk'; $wshell = New-Object -ComObject wscript.shell; $wshell.AppActivate('2Dto3D.exe - Application Error'); Sleep 1; $wshell.SendKeys('~'); $wshell = New-Object -ComObject wscript.shell; $wshell.AppActivate('Integration into Microsoft Edge browser'); Sleep 1; $wshell.SendKeys('~');  Start-Sleep -s 1; $wshell.SendKeys("^{Esc}"); Start-Sleep -s 1; $wshell.SendKeys("^{Esc}"); $wshell.AppActivate('IDM'); Sleep 1; $wshell.SendKeys('~'); Start-Sleep -s 1; $wshell.AppActivate('Tip of the Day'); Sleep 1; $wshell.SendKeys('~');  Start-Sleep -s 1; $wshell.AppActivate('Internet Download Manager 6.39'); Sleep 1; $wshell.SendKeys('%{F4}'); Start-Sleep -s 1; $wshell.AppActivate('Chrome'); Sleep 1; $wshell.SendKeys('~'); $wshell.AppActivate('Sign in to Google Drive'); Sleep 1; $wshell.SendKeys('~')
