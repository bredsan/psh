$psh = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/psh/psh.ps1 | Invoke-Expression
$dev = Invoke-WebRequest https://raw.githubusercontent.com/bredsan/psh/dev.ps1 | Invoke-Expression


function psh {
    # Carrega o perfil PSHESH
    $psh
}

function dev {
    # Carrega o perfil DEV
    $dev
}