$x = 1

function ollieFirstFunction {
    do {
        Write-Host ($x)
        $x++
        }
    until ($x -eq 4)
}

ollieFirstFunction