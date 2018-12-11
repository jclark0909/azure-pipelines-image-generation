################################################################################
##  File:  Install-WindowsUpdates.ps1
##  Team:  CI-Platform
##  Desc:  Install Windows Updates.
##         Should be run at end just before Antivirus.
################################################################################

Write-Host "Run windows updates"
#Need to install Negut prior to downloading PSWindowsUpdate module.
Install-PackageProvider -Name Nuget -Force

Install-Module -Name PSWindowsUpdate -Force -AllowClobber
Get-WUInstall -WindowsUpdate -AcceptAll -UpdateType Software -IgnoreReboot
Get-WUInstall -MicrosoftUpdate -AcceptAll -IgnoreUserInput -IgnoreReboot
