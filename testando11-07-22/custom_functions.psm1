filter ProgressBar
{
    
    param(
        [Parameter(Mandatory,ValueFromPipeline)]
        [scriptblock]$block,
        [string]$activity
    )
    $List = $block.Invoke() | Where-Object{$_.length -ne 0} | foreach {$_}
    $TotalItems=$List.Count
    $CurrentItem = 0
    $PercentComplete = 0
    ForEach($item in $List){  
        Write-Progress -Activity $activity -Status "$PercentComplete% Completo" -CurrentOperation $item -PercentComplete $PercentComplete
        $CurrentItem++
        $PercentComplete = [int](($CurrentItem / $TotalItems) * 100)
    }
}

filter Percent
{
    param(
        [Parameter(Mandatory,ValueFromPipeline)]
        [scriptblock]$block
    )
    $List = $block.Invoke() | Where-Object{$_.length -ne 0} | foreach {$_}
    $TotalItems=$List.Count
    $CurrentItem = 0
    $PercentComplete = 0
    for ($i = 0; $i -le $TotalItems; $i++ )
    {
        ($i/$TotalItems).tostring("P")
    }
}
{tree $home} | Percent

#{ls c:\ -Directory -Name -Recurse} | ProgressBar -activity "Listando diretorios"


function Delete-History
{
    [Microsoft.PowerShell.PSConsoleReadLine]::ClearHistory()
}
