$exitNow = 0

Do {

    $firstChoice = Read-Host -Prompt "Gaming, trading, or neither?"

    if ($firstChoice -eq "g") {
        Start-Process -FilePath "C:\Program Files (x86)\Steam\Steam.exe" -WindowStyle Minimized

        Do {
            $secondChoice = Read-Host -Prompt "Spotify, Discord, or both?"
        
            if ($secondChoice -eq "s") {
                Start-Process -FilePath "C:\Users\ob583\AppData\Roaming\Spotify\Spotify.exe"
                exit
            }

            if ($secondChoice -eq "d") {
                Start-Process -FilePath "C:\Users\ob583\AppData\Local\Discord\app-0.0.309\Discord.exe"
                exit
            }

            if ($secondChoice -eq "b") {
                Start-Process -FilePath "C:\Users\ob583\AppData\Roaming\Spotify\Spotify.exe"
                Start-Process -FilePath "C:\Users\ob583\AppData\Local\Discord\app-0.0.309\Discord.exe"
                exit
            }

            if ($secondChoice -ne "s"-or $secondChoice -ne "d" -or $secondChoice -ne "b") {
                Write-Host "Sorry, not a valid input. Not a hard pattern to follow dipshit!"
            }

        } until ($exitNow -eq 1)
    }

    if ($firstChoice -eq "t") {
        Start-Process -FilePath "D:\Program Files\tws\tws.exe"
        Start-Process -FilePath "C:\Program Files\Google\Chrome\Application\chrome.exe"
        Start-Process -FilePath "C:\Users\ob583\AppData\Local\Discord\app-0.0.309\Discord.exe"
        exit
    }

    if ($firstChoice -eq "n") {
        exit
    }

    if ($firstChoice -ne "g"-or $firstChoice -ne "t" -or $firstChoice -ne "n") {
        Write-Host "Sorry, you're a fucking idiot. Valid inputs are 's' for Spotify, 'd' for Discord, or 'b' for both."
    }

} until ($exitNow -eq 1)