using namespace System.Management.Automation.Host
Add-Type -AssemblyName System.Windows.Forms

function Start-Text {
    param (
        [string]$Title = 'Kategorien'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Browser"
    Write-Host "2: Launcher"
    Write-Host "3: Utilitys"
    Write-Host "Q: Press 'Q' to quit."
}

function Start-Function {
    do
    {
    Start-Text
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    '1' {
        Browser-Function
        } 

    '2' {
        'You chose option #2'
        } 

    '3' {
        'You chose option #3'
        }

    }
    }
    until ($selection -eq 'q')
    
}

function Browser-Text {
    param (
        [string]$Title = 'Browser'
    )
    Clear-Host
    Write-Host "================ $Title ================"

    Write-Host "1: Opera"
    Write-Host "2: OperaGX"
    Write-Host "3: Chrome"
    Write-Host "4: FireFox"
    Write-Host "5: Brave"
    Write-Host "Q: Press 'Q' to quit."
}
function Browser-Function {
    do
    {
    Browser-Text
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    '1' {
        'You chose option #1'
        } 

    '2' {
        'You chose option #2'
        } 

    '3' {
        'You chose option #3'
        }
        
    '4' {
        'You chose option #4'
        }    

    '5' {
        Brave-Function
        }         
    }
    }
    until ($selection -eq 'q')  
    
}
function Brave-Text {
    param (
        [string]$Title = 'Brave'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Install"
    Write-Host "2: Uninstall"
    Write-Host "Q: Press 'Q' to quit."
}
function Brave-Function {
    do
    {
    Brave-Text
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    '1' {
        Write-Host "Installing Brave Browser"
        $ResultText.text = "`r`n" +"`r`n" + "Installing Brave... Please Wait" 
        winget install -e BraveSoftware.BraveBrowser | Out-Host
        if($?) { Write-Host "Installed Brave Browser" }
        $ResultText.text = "`r`n" + "Finished Installing Brave" + "`r`n" + "`r`n" + "Ready for Next Task"
        Pause
        } 

    '2' {
        Write-Host "Uninstalling Brave Browser"
        winget uninstall -e BraveSoftware.BraveBrowser | Out-Host
        Write-Host "Finished Uninstalling Brave Browser"
        Pause
        } 
    }
    }
    until ($selection -eq 'q')
    
}


Start-Function