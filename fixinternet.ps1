#Requires -RunAsAdministrator

clear

function fix
{
    netsh winsock reset
    netsh int ip reset all
    netsh winhttp reset proxy
    ipconfig /flushdns
}

Write-Output "=================No Internet on WSL2 Fix Powershell Script================="
$confirm_start = Read-Host "Do you want to start? [Y/n]"
if ($confirm_start -eq "y") { fix }
elseif ($confirm_start -eq "Y") { fix }
else { exit }

Write-Output "=================================Completed================================="
$confirm_restart = Read-Host "A restart is required, Would you like to restart? [Y/n]"
if ($confirm_restart -eq "y") { Restart-Computer }
elseif ($confirm_restart -eq "Y") { Restart-Computer }
clear