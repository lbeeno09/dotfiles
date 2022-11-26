# >>> Custom Variables
Set-Variable HOME "D:$env:homepath" -Force
(get-psprovider "FileSystem").Home = "D:$env:homepath"

# Alias
Set-Alias ll ls
Set-Alias l ls

# disable default prompt for anaconda
$omp_config = Join-Path $PSScriptRoot "./omp.json"
# <<< Custom Variables

# >>> Custom Functions
# Copy Content to Clipboard
function Copy-File {
    param (
        [Parameter(Mandatory=$true)][string]$FileName
    )

    Get-Content $FileName | Set-Clipboard
}

# Create Symlink
function SymLink {
    param (
        [Parameter(Mandatory=$true)][string]$What,
        [Parameter(Mandatory=$true)][string]$Where,
        [Parameter(Mandatory=$true)][string]$Called
    )

    New-Item -Value $What -Path $Where -Name $Called -ItemType SymbolicLink
}

# conda init
function initconda {
  (& "$HOME\anaconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | Invoke-Expression
}
# posh git
function Set-PoshGitStatus {
  $global:GitStatus = Get-GitStatus
  $env:POSH_GIT_STRING = Write-GitStatus -Status $global:GitStatus
}
# <<< Custom Functions

# Powershell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Terminal
Import-Module posh-git
conda config --set changeps1 False
oh-my-posh init pwsh --config $omp_config | Invoke-Expression
Import-Module -Name Terminal-Icons
New-Alias -Name "Set-PoshContext" -Value "Set-PoshGitStatus" -Scope Global -Force
# PSReadLine
Set-PSReadLineOption -PredictionSource History
# conda init
initconda
