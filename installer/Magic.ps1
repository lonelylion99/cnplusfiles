Remove-Item "C:\Users\*\Desktop\Google Cloud SDK Shell.*"; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Removing%20Recycle%20Bin.bat' -OutFile 'C:\Users\kiyoe\Documents\Removing Recycle Bin.bat'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Adding%20This%20PC.bat' -OutFile 'C:\Users\kiyoe\Documents\Adding This PC.bat'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Adding%20Recycle%20Bin.bat' -OutFile 'C:\Users\kiyoe\Documents\Adding Recycle Bin.bat'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/6.jpg' -OutFile 'C:\Users\kiyoe\Pictures\Default.bmp'; Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Wallpaper%20Changer.bat' -OutFile 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat'; Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat'; Start-Sleep -s 1; Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat'; Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat'; Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat'; Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat'; Start-Sleep -s 1; Remove-Item "C:\Users\kiyoe\Documents\Wallpaper Changer.bat"; Invoke-Item 'C:\Users\kiyoe\Documents\Removing Recycle Bin.bat'; Start-Sleep -s 1; Invoke-Item 'C:\Users\kiyoe\Documents\Adding This PC.bat'; Start-Sleep -s 1; Invoke-Item 'C:\Users\kiyoe\Documents\Adding Recycle Bin.bat'; Start-Sleep -s 1; Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')); choco feature enable -n allowGlobalConfirmation; $LocalTempDir = $env:TEMP; $ChromeInstaller = "ChromeInstaller.exe"; (new-object System.Net.WebClient).DownloadFile('http://dl.google.com/chrome/install/375.126/chrome_installer.exe', "$LocalTempDir\$ChromeInstaller"); & "$LocalTempDir\$ChromeInstaller" /silent /install; $Process2Monitor = "ChromeInstaller"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$ChromeInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound); Start-Process "ms-settings:defaultapps"; choco install xdm; choco install internet-download-manager; choco install 7zip.install; choco install google-drive-file-stream; Remove-Item "C:\Users\kiyoe\Desktop\Google Docs.*", "C:\Users\kiyoe\Desktop\Google Sheets.*", "C:\Users\kiyoe\Desktop\Google Slides.*"; $LocalTempDir = $env:TEMP; $TelegramInstaller = "TelegramInstaller.exe"; (new-object System.Net.WebClient).DownloadFile('https://telegram.org/dl/desktop/win64', "$LocalTempDir\$TelegramInstaller"); & "$LocalTempDir\$TelegramInstaller" /silent /install; $Process2Monitor = "TelegramInstaller"; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$TelegramInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound); $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri 'https://github.com/mifi/lossless-cut/releases/download/v3.37.0/LosslessCut-win.exe' -OutFile 'C:\Users\kiyoe\Desktop\LosslessCut.exe'; function Unpin-App([string]$appname) {
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
Pin-App "Windows Administrative Tools" -unpin; Pin-App "Task Manager" -unpin; Pin-App "Control Panel" -unpin; Pin-App "Remote Desktop Connection" -unpin; Pin-App "Event Viewer" -unpin; Pin-App "File Explorer" -unpin; $wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys("^{Esc}"); Start-Sleep -s 1; $wshell.SendKeys("^{Esc}"); Start-Process "C:\Program Files (x86)\Internet Download Manager\IDMan.exe"; choco install vb-cable; Start-Process 'C:\ProgramData\chocolatey\lib\vb-cable\tools\VBCABLE_Setup_x64'