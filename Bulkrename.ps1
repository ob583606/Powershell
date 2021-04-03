<# REAL ESTATE 2020 RENAME#>
<#
$Runs = 0
$Folders = (Get-ChildItem "S:\REAL ESTATE\Real Estate 2020\*" -Directory | Measure-Object).Count

Write-Host "Real Estate Folders From 2020"
Write-Host $Folders

Do {

$Filedir = Get-ChildItem "S:\REAL ESTATE\Real Estate 2020\*" | Select-Object -Index "$Runs"
$Filename = $Filedir -replace ".*2020" -replace '^.'
if ($Filename -ne "Bill Liu" -and $Filename -ne "Haslam.M20 SCANNED FILE") {
    if ($Filename -ne "Hudson Place One Info and schedule packages") {
        Write-Host $Filename
        Get-Item -Path "$Filedir\*.*" -Exclude "$Filename*", "($Filename)*" | rename-item -NewName { "$Filename " + $_.Name } -erroraction SilentlyContinue
    }
}
$Runs++
}
Until ($Runs -eq $Folders)
#>

<# REAL ESTATE 2021 RENAME#>

$Runs = 0
$Folders = (Get-ChildItem "S:\REAL ESTATE\Real Estate 2021\*" -Directory | Measure-Object).Count

Write-Host "Real Estate Folders From 2021"
Write-Host $Folders

Do {

$Filedir = Get-ChildItem "S:\REAL ESTATE\Real Estate 2021\*" | Select-Object -Index "$Runs"
$Filename = $Filedir -replace ".*2021" -replace '^.'
if ($Filename -ne "Bill Liu" -and $Filename -ne "Haslam.M20 SCANNED FILE") {
    if ($Filename -ne "Hudson Place One Info and schedule packages") {
        Write-Host $Filename
        Get-Item -Path "$Filedir\*.*" -Exclude "$Filename*", "($Filename)*" | rename-item -NewName { "$Filename " + $_.Name } -erroraction SilentlyContinue
    }
}
$Runs++
}
Until ($Runs -eq $Folders)

<# WILLS CLIENTS 2020 RENAME#>
<#
$Runs = 0
$Folders = (Get-ChildItem "S:\WILLS\Wills Clients 2020\*" -Directory | Measure-Object).Count

Write-Host "Will Client Folders From 2020"
Write-Host $Folders

Do {

$Filedir = Get-ChildItem "S:\WILLS\Wills Clients 2020\*" | Select-Object -Index "$Runs"
$Filename = $Filedir -replace ".*2020" -replace '^.'
if ($Filename -ne "Bill Liu" -and $Filename -ne "Haslam.M20 SCANNED FILE") {
    if ($Filename -ne "Hudson Place One Info and schedule packages") {
        Write-Host $Filename
        Get-Item -Path "$Filedir\*.*" -Exclude "$Filename*", "($Filename)*" | rename-item -NewName { "$Filename " + $_.Name } -erroraction SilentlyContinue
    }
}
$Runs++
}
Until ($Runs -eq $Folders)
#>

<#WILLS CLIENTS 2021 RENAME#>
$Runs = 0
$Folders = (Get-ChildItem "S:\WILLS\Wills Clients 2021\*" -Directory | Measure-Object).Count

Write-Host "Will Client Folders From 2021"
Write-Host $Folders

Do {

$Filedir = Get-ChildItem "S:\WILLS\Wills Clients 2021\*" | Select-Object -Index "$Runs"
$Filename = $Filedir -replace ".*2021" -replace '^.'
if ($Filename -ne "Bill Liu" -and $Filename -ne "Haslam.M20 SCANNED FILE") {
    if ($Filename -ne "Hudson Place One Info and schedule packages") {
        Write-Host $Filename
        Get-Item -Path "$Filedir\*.*" -Exclude "$Filename*", "($Filename)*" | rename-item -NewName { "$Filename " + $_.Name } -erroraction SilentlyContinue
    }
}
$Runs++
}
Until ($Runs -eq $Folders -or $Folders -eq 0)