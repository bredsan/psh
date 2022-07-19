






function stackx {
    $url =  "http://stackoverflow.com/search?q=$args"
    $search = Invoke-WebRequest $url
    $results = $search.links | where href -like "*/questions/*"  
    foreach ($result in $results)
    {
    $count += 1 
        if ($result.href -notlike "*/questions/tagged*")
        {
            Write-Host [$count]  -foregroundcolor DarkMagenta
            Write-Host $result.InnerText  
        }
    }
}