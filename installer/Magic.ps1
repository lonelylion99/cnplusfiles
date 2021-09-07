echo "
▄▀█ █░█ ▀█▀ █▀█ █▀▄▀█ ▄▀█ █▀▀ █ █▀▀
█▀█ █▄█ ░█░ █▄█ █░▀░█ █▀█ █▄█ █ █▄▄"
echo "Personalizing Desktop...";
Remove-Item "C:\Users\*\Desktop\Google Cloud SDK Shell.*" | out-null
$ProgressPreference = 'SilentlyContinue' | out-null
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Removing%20Recycle%20Bin.bat' -OutFile 'C:\Users\kiyoe\Documents\Removing Recycle Bin.bat' | out-null
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Adding%20This%20PC.bat' -OutFile 'C:\Users\kiyoe\Documents\Adding This PC.bat' | out-null
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Adding%20Recycle%20Bin.bat' -OutFile 'C:\Users\kiyoe\Documents\Adding Recycle Bin.bat' | out-null
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/6.jpg' -OutFile 'C:\Users\kiyoe\Pictures\Default.bmp' | out-null
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/AutoMagic-Linux/Wallpapers.zip' -OutFile 'C:\Users\kiyoe\Pictures\Wallpapers.zip' | out-null
Expand-Archive -LiteralPath 'C:\Users\kiyoe\Pictures\Wallpapers.zip' -DestinationPath 'C:\Users\kiyoe\Pictures' | out-null
Remove-Item "C:\Users\kiyoe\Pictures\Wallpapers.zip" | out-null
echo "...wallpapers downloaded into Pictures folder";
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/lonelylion99/cnplusfiles/main/installer/Wallpaper%20Changer.bat' -OutFile 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat' | out-null
Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat' | out-null
Start-Sleep -s 1 | out-null
Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat' | out-null
Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat' | out-null
Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat' | out-null
Invoke-Item 'C:\Users\kiyoe\Documents\Wallpaper Changer.bat' | out-null
Start-Sleep -s 1 | out-null
Remove-Item "C:\Users\kiyoe\Documents\Wallpaper Changer.bat" | out-null
Invoke-Item 'C:\Users\kiyoe\Documents\Removing Recycle Bin.bat' | out-null
Start-Sleep -s 1 | out-null
Invoke-Item 'C:\Users\kiyoe\Documents\Adding This PC.bat' | out-null
Start-Sleep -s 1 | out-null
Invoke-Item 'C:\Users\kiyoe\Documents\Adding Recycle Bin.bat' | out-null
Start-Sleep -s 1 | out-null
echo "...done";
echo "__________________________________________________________________________";
echo "Installing Chocolatey...";
Set-ExecutionPolicy Bypass -Scope Process -Force | out-null; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072 | out-null; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) | out-null; choco feature enable -n allowGlobalConfirmation | out-null; 
echo "...done";
echo "__________________________________________________________________________";
echo "Installing Chrome...";
$LocalTempDir = $env:TEMP | out-null; $ChromeInstaller = "ChromeInstaller.exe" | out-null; (new-object System.Net.WebClient).DownloadFile('http://dl.google.com/chrome/install/375.126/chrome_installer.exe', "$LocalTempDir\$ChromeInstaller") | out-null; & "$LocalTempDir\$ChromeInstaller" /silent /install | out-null; $Process2Monitor = "ChromeInstaller" | out-null; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name | out-null; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$ChromeInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound) | out-null
echo "...you need to manually change the default browser";
Start-Process "ms-settings:defaultapps" | out-null
echo "...done";
echo "__________________________________________________________________________";
echo "Installing XDM...";
choco install xdm | out-null
echo "...done";
echo "__________________________________________________________________________";
echo "Installing IDM...";
choco install internet-download-manager | out-null
echo "...done";
echo "__________________________________________________________________________";
echo "Installing 7zip...";
choco install 7zip.install | out-null
echo "...done";
echo "__________________________________________________________________________";
echo "Installing Google Drive...";
choco install google-drive-file-stream | out-null; Remove-Item "C:\Users\kiyoe\Desktop\Google Docs.*", "C:\Users\kiyoe\Desktop\Google Sheets.*", "C:\Users\kiyoe\Desktop\Google Slides.*" | out-null
echo "...done";
echo "__________________________________________________________________________";
echo "Installing Telegram...";
$LocalTempDir = $env:TEMP; $TelegramInstaller = "TelegramInstaller.exe" | out-null; (new-object System.Net.WebClient).DownloadFile('https://telegram.org/dl/desktop/win64', "$LocalTempDir\$TelegramInstaller") | out-null; & "$LocalTempDir\$TelegramInstaller" /silent /install; $Process2Monitor = "TelegramInstaller" | out-null; Do { $ProcessesFound = Get-Process | ?{$Process2Monitor -contains $_.Name} | Select-Object -ExpandProperty Name | out-null; If ($ProcessesFound) { "Still running: $($ProcessesFound -join ', ')" | Write-Host | out-null; Start-Sleep -Seconds 2 } else { rm "$LocalTempDir\$TelegramInstaller" -ErrorAction SilentlyContinue -Verbose } } Until (!$ProcessesFound) | out-null; $ProgressPreference = 'SilentlyContinue' | out-null
echo "...done";
echo "__________________________________________________________________________";
echo "Installing LosslessCut...";
Invoke-WebRequest -Uri 'https://github.com/mifi/lossless-cut/releases/download/v3.39.0/LosslessCut-win.exe' -OutFile 'C:\Users\kiyoe\Desktop\LosslessCut.exe' | out-null
echo "...done";
echo "__________________________________________________________________________";
echo "Unpinning app shortcuts...";
function Unpin-App([string]$appname) {
    ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() |
        ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Unpin from taskbar'} | %{$_.DoIt()}
}; Unpin-App("Internet Explorer") | out-null; function Pin-App {    param(
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
} | out-null; Pin-App "Server Manager" -unpin | out-null; Pin-App "Windows PowerShell" -unpin | out-null; Pin-App "Windows PowerShell ISE" -unpin | out-null; Pin-App "Windows Administrative Tools" -unpin | out-null; Pin-App "Task Manager" -unpin | out-null; Pin-App "Control Panel" -unpin; Pin-App "Remote Desktop Connection" -unpin | out-null; Pin-App "Event Viewer" -unpin | out-null; Pin-App "File Explorer" -unpin | out-null; $wshell = New-Object -ComObject wscript.shell | out-null; $wshell.SendKeys("^{Esc}") | out-null; Start-Sleep -s 1 | out-null; $wshell.SendKeys("^{Esc}") | out-null
echo "...done";
echo "__________________________________________________________________________";
Start-Process "C:\Program Files (x86)\Internet Download Manager\IDMan.exe" | out-null
echo "Downloading Virtual Audio Driver...";
choco install vb-cable | out-null; Start-Process 'C:\ProgramData\chocolatey\lib\vb-cable\tools\VBCABLE_Setup_x64' | out-null
echo "...please install manually";
echo "...done";
echo "__________________________________________________________________________";
echo "Downloading Wondershare Uniconverter...";
Invoke-WebRequest -Uri 'https://cnplus-storage.herokuapp.com/35' -OutFile 'C:\Users\kiyoe\Desktop\Wondershare Uniconverter.zip' | out-null
echo "...done"
echo "__________________________________________________________________________";
echo "Everything is done";
echo "
▒█▀▀█ ▒█░░▒█ ▒█▀▀▀ 
▒█▀▀▄ ▒█▄▄▄█ ▒█▀▀▀ 
▒█▄▄█ ░░▒█░░ ▒█▄▄▄"; Start-Sleep -Seconds 1.5 | out-null
