#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
function initconda {
  (& "$HOME\anaconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | Invoke-Expression
}
#endregion
