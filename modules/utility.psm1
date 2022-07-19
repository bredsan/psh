function Delete-History
{
    $history = (Get-PSReadlineOption).HistorySavePath
    del $history
    [Microsoft.PowerShell.PSConsoleReadLine]::ClearHistory()
    Clear-Host
}