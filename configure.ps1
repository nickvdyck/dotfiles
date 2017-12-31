# Initialisation
$CURDIR = Get-Location
$PROFILEPATH = ($PROFILE | Split-Path)

# Install PowerShell  modules
Install-Module z -Scope CurrentUser -AllowClobber -Force
Install-Module posh-git -Scope CurrentUser -Force

# Setup User Profile scripts
Copy-Item "$($CURDIR.Path)/powershell/Microsoft.PowerShell_profile.ps1" $PROFILEPATH
Copy-Item "$($CURDIR.Path)/powershell/Colorful.Console.dll" $PROFILEPATH
Copy-Item "$($CURDIR.Path)/powershell/Get-Uptime.ps1" $PROFILEPATH
Copy-Item "$($CURDIR.Path)/powershell/sudo.ps1" $PROFILEPATH

# Setup environment variables
[System.Environment]::SetEnvironmentVariable("GNUPGHOME", "$HOME\.gnupg", "User")

# Install applications
choco install visualstudiocode -y
choco install git -y
choco install dotnetcore-sdk -y
choco install python -y
choco install nodejs -y
choco install docker-for-windows -y
choco install FiraCode -y

# Setup vscode extensions and preferences

# https://marketplace.visualstudio.com/items?itemName=ms-vscode.csharp
code --install-extension ms-vscode.csharp
# https://marketplace.visualstudio.com/items?itemName=ms-vscode.powershell
code --install-extension ms-vscode.powershell
# https://marketplace.visualstudio.com/items?itemName=ms-mssql.mssql
code --install-extension ms-mssql.mssql
# https://marketplace.visualstudio.com/items?itemName=ms-python.python
code --install-extension ms-python.python
# https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens
code --install-extension eamodio.gitlens
# https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker
code --install-extension PeterJausovec.vscode-docker
# https://marketplace.visualstudio.com/items?itemName=gerane.theme-monokai-cobalt
code --install-extension gerane.theme-monokai-cobalt
# https://marketplace.visualstudio.com/items?itemName=jtlowe.vscode-icon-theme
code --install-extension jtlowe.vscode-icon-theme
# https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight
code --install-extension wayou.vscode-todo-highlight

Copy-Item "$($CURDIR.Path)/vscode/settings.json" "$($env:APPDATA)/Code/User" -Force
