$psheesh = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/psheesh/psheesh.ps1 | Invoke-Expression
$dev = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/psheesh/dev.ps1 | Invoke-Expression


function psheesh {
    # Carrega o perfil ESTI
    $psheesh
}

function dev {
    # Carrega o perfil DEV
    $dev
}
