get-childitem *.mp3 | rename-item -newname { $_.basename.substring(0, 
    $_.basename.length-10) + $_.extension }