# Powershell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Terminal
Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot "./omp.json"
oh-my-posh init pwsh --config $omp_config | Invoke-Expression
Import-Module -Name Terminal-Icons

function Set-PoshGitStatus {
  $global:GitStatus = Get-GitStatus
  $env:POSH_GIT_STRING = Write-GitStatus -Status $global:GitStatus
}
New-Alias -Name "Set-PoshContext" -Value "Set-PoshGitStatus" -Scope Global -Force

# PSReadLine
Set-PSReadLineOption -PredictionSource History

# >>> Custom Variables
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
# <<< Custom Functions
