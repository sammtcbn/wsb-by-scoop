start /wait powershell.exe -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh'))"
setx /M path "%path%;C:\Users\%UserName%\scoop\shims"
