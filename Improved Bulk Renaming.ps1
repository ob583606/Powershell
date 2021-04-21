
$FolderNumber = 0

Do {
if ($FolderNumber -eq 0) {
    $ParentFolder = "C:\Testing\Real Estate 2021\"
    $RunMessage = "Ollie's Real Estate Clients folder."
    }

if ($FolderNumber -eq 1) {
    $ParentFolder = "C:\Testing\Wills Clients 2021\"
    $RunMessage = "Ollie's Will Folders from 2021."
    }

$Runs = 0
$Folders = (Get-ChildItem "$ParentFolder*" -Directory | Measure-Object).Count

Write-Host "$RunMessage"
Write-Host $Folders

Do {
$Filedir = Get-ChildItem "$ParentFolder*" | Select-Object -Index "$Runs"
$Filename = $Filedir -replace ".*2021" -replace '^.'
if ($Filename -ne "INSERT NAME OF FOLDER THAT YOU DON'T WANT RENAMED HERE" -and $Filename -ne "OR HERE, IF YOU HAVE MULTIPLE") {
    if ($Filename -ne "OR HERE FOR A THIRD" -and $Filename -ne "OR HERE, FOR A FOURTH AND FINAL NO GO ZONE") {
        Write-Host $Filename
        Get-Item -Path "$Filedir\*.*" -Exclude "$Filename*", "($Filename)*" | rename-item -NewName { "$Filename " + $_.Name } -erroraction SilentlyContinue
    }
}
$Runs++
}
Until ($Runs -eq $Folders)
$FolderNumber++
}
Until ($FolderNumber -eq 2)