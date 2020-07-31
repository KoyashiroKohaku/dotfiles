$rawui = (Get-Host).UI.RawUI
$rawui.WindowTitle = "PowerShell 7"

Remove-Item alias:ls
Remove-Item alias:pwd
Remove-Item alias:clear

function ll {
  ls -la
}

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox