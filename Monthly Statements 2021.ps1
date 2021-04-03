<# Monthly Statements Renaming#>

Write-Host "Monthly Statements Renaming"

$Runs = 0
$Folders = (Get-ChildItem -Path "S:\Accounting\Corporate Taxes\Corporate Taxes ending August 31_2021\Monthly Statements\" -Directory | Measure-Object).Count

Write-Host "$Folders"

Do {

    $Filedir = Get-ChildItem -Path "S:\Accounting\Corporate Taxes\Corporate Taxes ending August 31_2021\Monthly Statements\*" -Directory | Select-Object -Index "$Runs"
    $Filename = $Filedir -replace ".*Statements" -replace "^."
    $Filedir2 = Get-ChildItem -Path "$Filedir\*" | Select-Object -Index 0
    $Filetype = $Filedir2 -replace ".*1"
    $Filetype1 = $Filetype -replace ".*2020"
    Write-Host $Filename
    
    $Fileamt = (Get-ChildItem -Path "$Filedir\*" -Exclude *.url | Measure-Object).Count
    
    $Files = 1

    if ($Fileamt -gt 0) {
        Do {
        $Months = 0
        if ($Files -eq 1) {
            $Months = "($Files) $Filename - September 2020"
        }
        if ($Files -eq 2) {
            $Months = "($Files) $Filename - October 2020"
        }
        if ($Files -eq 3) {
            $Months = "($Files) $Filename - November 2020"
        }
        if ($Files -eq 4) {
            $Months = "($Files) $Filename - December 2020"
        }
        if ($Files -eq 5) {
        $Months = "($Files) $Filename - January 2021"
    }
        if ($Files -eq 6) {
        $Months = "($Files) $Filename - February 2021"
    }
        if ($Files -eq 7) {
        $Months = "($Files) $Filename - March 2021"
    }
        if ($Files -eq 8) {
        $Months = "($Files) $Filename - April 2021"
    }
        if ($Files -eq 9) {
        $Months = "($Files) $Filename - May 2021"
    }
        if ($Files -eq 10) {
        $Months = "($Files) $Filename - June 2021"
    }
        if ($Files -eq 11) {
        $Months = "($Files) $Filename - July 2021"
    }
        if ($Files -eq 12) {
        $Months = "($Files) $Filename - August 2021"
    }
        
        $Finished = "$Months" + "$Filetype1"
        Get-Item -Path "$Filedir\*.*" -Include "$Files*" -Exclude "($Files)*" | rename-item -NewName { "$Finished" } 

        $Files++
    }
    Until ($Files -gt $Fileamt -or $Files -eq 13)
    }
    
$Runs++
}
Until ($Runs -eq $Folders)



<# General Bank Statements Renaming#>

Write-Host "General Bank Statement Renaming"

$Runs = 0
$Folders = (Get-ChildItem -Path "S:\Accounting\Corporate Taxes\Corporate Taxes ending August 31_2021\General Bank Accounts\" -Directory | Measure-Object).Count

Write-Host "$Folders"

Do {

    $Filedir = Get-ChildItem -Path "S:\Accounting\Corporate Taxes\Corporate Taxes ending August 31_2021\General Bank Accounts\*" -Directory | Select-Object -Index "$Runs"
    $Filename = $Filedir -replace ".*Accounts" -replace "^."
    $Filedir2 = Get-ChildItem -Path "$Filedir\*" | Select-Object -Index 0
    $Filetype = $Filedir2 -replace ".*1"
    $Filetype1 = $Filetype -replace ".*2020"
    Write-Host $Filename
    
    $Fileamt = (Get-ChildItem -Path "$Filedir\*" -Exclude *.url | Measure-Object).Count
    
    $Files = 1

    if ($Fileamt -gt 0) {
        Do {
        $Months = 0
        if ($Files -eq 1) {
            $Months = "($Files) $Filename - September 2020"
        }
        if ($Files -eq 2) {
            $Months = "($Files) $Filename - October 2020"
        }
        if ($Files -eq 3) {
            $Months = "($Files) $Filename - November 2020"
        }
        if ($Files -eq 4) {
            $Months = "($Files) $Filename - December 2020"
        }
        if ($Files -eq 5) {
        $Months = "($Files) $Filename - January 2021"
    }
        if ($Files -eq 6) {
        $Months = "($Files) $Filename - February 2021"
    }
        if ($Files -eq 7) {
        $Months = "($Files) $Filename - March 2021"
    }
        if ($Files -eq 8) {
        $Months = "($Files) $Filename - April 2021"
    }
        if ($Files -eq 9) {
        $Months = "($Files) $Filename - May 2021"
    }
        if ($Files -eq 10) {
        $Months = "($Files) $Filename - June 2021"
    }
        if ($Files -eq 11) {
        $Months = "($Files) $Filename - July 2021"
    }
        if ($Files -eq 12) {
        $Months = "($Files) $Filename - August 2021"
    }
        
        $Finished = "$Months" + "$Filetype1"
        Get-Item -Path "$Filedir\*.*" -Include "$Files*" -Exclude "($Files)*" | rename-item -NewName { "$Finished" } 

        $Files++
    }
    Until ($Files -gt $Fileamt -or $Files -eq 13)
    }
    
$Runs++
}
Until ($Runs -eq $Folders)



<# Trust Statements Renaming#>

Write-Host "Trust Statement Renaming"

$Runs = 0
$Folders = (Get-ChildItem -Path "S:\Accounting\Corporate Taxes\Corporate Taxes ending August 31_2021\Trust Accounts\" -Directory | Measure-Object).Count

Write-Host "$Folders"

Do {

    $Filedir = Get-ChildItem -Path "S:\Accounting\Corporate Taxes\Corporate Taxes ending August 31_2021\Trust Accounts\*" -Directory | Select-Object -Index "$Runs"
    $Filename = $Filedir -replace ".*Accounts" -replace "^."
    $Filedir2 = Get-ChildItem -Path "$Filedir\*" | Select-Object -Index 0
    $Filetype = $Filedir2 -replace ".*1"
    $Filetype1 = $Filetype -replace ".*2020"
    Write-Host $Filename
    
    $Fileamt = (Get-ChildItem -Path "$Filedir\*" -Exclude *.url | Measure-Object).Count
    
    $Files = 1

    if ($Fileamt -gt 0) {
        Do {
        $Months = 0
        if ($Files -eq 1) {
            $Months = "($Files) $Filename - September 2020"
        }
        if ($Files -eq 2) {
            $Months = "($Files) $Filename - October 2020"
        }
        if ($Files -eq 3) {
            $Months = "($Files) $Filename - November 2020"
        }
        if ($Files -eq 4) {
            $Months = "($Files) $Filename - December 2020"
        }
        if ($Files -eq 5) {
        $Months = "($Files) $Filename - January 2021"
    }
        if ($Files -eq 6) {
        $Months = "($Files) $Filename - February 2021"
    }
        if ($Files -eq 7) {
        $Months = "($Files) $Filename - March 2021"
    }
        if ($Files -eq 8) {
        $Months = "($Files) $Filename - April 2021"
    }
        if ($Files -eq 9) {
        $Months = "($Files) $Filename - May 2021"
    }
        if ($Files -eq 10) {
        $Months = "($Files) $Filename - June 2021"
    }
        if ($Files -eq 11) {
        $Months = "($Files) $Filename - July 2021"
    }
        if ($Files -eq 12) {
        $Months = "($Files) $Filename - August 2021"
    }
        
        $Finished = "$Months" + "$Filetype1"
        Get-Item -Path "$Filedir\*.*" -Include "$Files*" -Exclude "($Files)*" | rename-item -NewName { "$Finished" } 

        $Files++
    }
    Until ($Files -eq 13)
    }
    
$Runs++
}
Until ($Runs -eq $Folders)