# https://docs.microsoft.com/en-us/windows/application-management/remove-provisioned-apps-during-update
# https://github.com/jayharris/dotfiles-windows/blob/master/windows.ps1#L157
# https://gist.github.com/jessfraz/7c319b046daa101a4aaef937a20ff41f
# https://gist.github.com/alirobe/7f3b34ad89a159e6daa1
# https://github.com/W4RH4WK/Debloat-Windows-10/blob/master/scripts/remove-default-apps.ps1

Write-Output "Uninstall some applications that come with Windows out of the box" -ForegroundColor "Yellow"

$applicationList = @(
    "Microsoft.BingFinance"
    "Microsoft.3DBuilder"
    "Microsoft.BingFinance"
    "Microsoft.BingNews"
    "Microsoft.BingSports"
    "Microsoft.BingWeather"
    "Microsoft.CommsPhone"
    "Microsoft.Getstarted"
    "Microsoft.WindowsMaps"
    "*MarchofEmpires*"
    "Microsoft.GetHelp"
    "Microsoft.Messaging"
    "*Minecraft*"
    "Microsoft.MicrosoftOfficeHub"
    "Microsoft.Office.OneNote"
    "Microsoft.OneConnect"
    "Microsoft.WindowsPhone"
    "Microsoft.WindowsSoundRecorder"
    "*Solitaire*"
    "Microsoft.MicrosoftStickyNotes"
    "Microsoft.Office.Sway"
    "Microsoft.XboxApp"
    "Microsoft.XboxIdentityProvider"
    "Microsoft.ZuneMusic"
    "Microsoft.ZuneVideo"
    "Microsoft.NetworkSpeedTest"
    "Microsoft.FreshPaint"
    "Microsoft.Print3D"
    "*Autodesk*"
    "*BubbleWitch*"
    "king.com*"
    "G5*"
    "*Dell*"
    "*Dropbox*"
    "*Facebook*"
    "*Keeper*"
    "*Netflix*"
    "*Plex*"
    "*.Duolingo-LearnLanguagesforFree"
    "*.EclipseManager"
    "ActiproSoftwareLLC.562882FEEB491" # Code Writer
    "*.AdobePhotoshopExpress"
    "ThumbmunkeysLtd.PhototasticCollage"
    "Fitbit.FitbitCoach"
)

foreach ($app in $applicationList)
{
    Write-Output "Trying to remove $app"
    Get-AppxPackage $app -AllUsers | Remove-AppxPackage
}
