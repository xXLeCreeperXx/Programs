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
        Launcher-Function
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
        Opera-Function
        } 

    '2' {
        OperaGX-Function
        } 

    '3' {
        Chrome-Function
        }
        
    '4' {
        FireFox-Function
        }    

    '5' {
        Brave-Function
        }         
    }
    }
    until ($selection -eq 'q')  
    
}

function Launcher-Text {
    param (
        [string]$Title = 'Launcher'
    )
    Clear-Host
    Write-Host "================ $Title ================"

    Write-Host "1: Steam"
    Write-Host "2: EpicGames"
    Write-Host "3: GOG"
    Write-Host "4: Ubisoft Connect"
    Write-Host "5: Xbox GamePass App"
    Write-Host "Q: Press 'Q' to quit."
}

function Launcher-Function {
    do
    {
    Launcher-Text
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    '1' {
        Steam-Function
        } 

    '2' {
        EpicGames-Function
        } 

    '3' {
        GOG-Function
        }
        
    '4' {
        UbisoftConnect-Function
        }    

    '5' {
        XboxApp-Function
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
        cmd.exe /c winget install -e BraveSoftware.BraveBrowser
        Write-Host "Finished Installing Brave Browser" -ForegroundColor red
        Pause
        } 

    '2' {
        Write-Host "Uninstalling Brave Browser"
        cmd.exe /c winget uninstall -e BraveSoftware.BraveBrowser
        Write-Host "Finished Uninstalling Brave Browser" -ForegroundColor red
        Pause
        } 
    }
    }
    until ($selection -eq 'q')
    
}
function FireFox-Text {
    param (
        [string]$Title = 'FireFox'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Install"
    Write-Host "2: Uninstall"
    Write-Host "Q: Press 'Q' to quit."
}

function FireFox-Function {
    do
    {
    FireFox-Text
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    '1' {
        Write-Host "Installing FireFox Browser"
        cmd.exe /c winget install -e --id Mozilla.Firefox
        Write-Host "Finished Installing FireFox" -ForegroundColor red
        Pause
        } 

    '2' {
        Write-Host "Uninstalling FireFox Browser"
        cmd.exe /c winget uninstall -e --id Mozilla.Firefox
        Write-Host "Finished Uninstalling FireFox" -ForegroundColor red
        Pause
        } 
    }
    }
    until ($selection -eq 'q')
    
}

function Chrome-Text {
    param (
        [string]$Title = 'Chrome'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Install"
    Write-Host "2: Uninstall"
    Write-Host "Q: Press 'Q' to quit."
}

function Chrome-Function {
    do
    {
    Chrome-Text
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    '1' {
        Write-Host "Installing Chrome Browser"
        cmd.exe /c winget install -e --id Google.Chrome
        Write-Host "Finished Installing Chrome" -ForegroundColor red
        Pause
        } 

    '2' {
        Write-Host "Uninstalling Chrome Browser"
        cmd.exe /c winget uninstall -e --id Google.Chrome
        Write-Host "Finished Uninstalling Chrome" -ForegroundColor red
        Pause
        } 
    }
    }
    until ($selection -eq 'q')
    
}

function OperaGX-Text {
    param (
        [string]$Title = 'OperaGX'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Install"
    Write-Host "2: Uninstall"
    Write-Host "Q: Press 'Q' to quit."
}

function OperaGX-Function {
    do
    {
    OperaGX-Text
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    '1' {
        Write-Host "Installing OperaGX Browser"
        cmd.exe /c winget install -e --id Opera.OperaGX
        Write-Host "Finished Installing OperaGX" -ForegroundColor red
        Pause
        } 

    '2' {
        Write-Host "Uninstalling OperaGX Browser"
        cmd.exe /c winget uninstall -e --id Opera.OperaGX
        Write-Host "Finished Uninstalling OperaGX" -ForegroundColor red
        Pause
        } 
    }
    }
    until ($selection -eq 'q')
    
}

function Opera-Text {
    param (
        [string]$Title = 'Opera'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Install"
    Write-Host "2: Uninstall"
    Write-Host "Q: Press 'Q' to quit."
}

function Opera-Function {
    do
    {
    Opera-Text
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    '1' {
        Write-Host "Installing Opera Browser"
        cmd.exe /c winget install -e --id Opera.Opera
        Write-Host "Finished Installing Opera" -ForegroundColor red
        Pause
        } 

    '2' {
        Write-Host "Uninstalling Opera Browser"
        cmd.exe /c winget uninstall -e --id Opera.Opera
        Write-Host "Finished Uninstalling Opera" -ForegroundColor red
        Pause
        } 
    }
    }
    until ($selection -eq 'q')
    
}

function Steam-Text {
    param (
        [string]$Title = 'Steam'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Install"
    Write-Host "2: Uninstall"
    Write-Host "Q: Press 'Q' to quit."
}

function Steam-Function {
    do
    {
    Steam-Text
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    '1' {
        Write-Host "Installing Steam"
        cmd.exe /c winget install -e --id Valve.Steam
        Write-Host "Finished Installing Steam" -ForegroundColor red
        Pause
        } 

    '2' {
        Write-Host "Uninstalling Steam"
        cmd.exe /c winget uninstall -e --id Valve.Steam
        Write-Host "Finished Uninstalling Steam" -ForegroundColor red
        Pause
        } 
    }
    }
    until ($selection -eq 'q')
    
}

function EpicGames-Text {
    param (
        [string]$Title = 'EpicGames'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Install"
    Write-Host "2: Uninstall"
    Write-Host "Q: Press 'Q' to quit."
}

function EpicGames-Function {
    do
    {
    EpicGames-Text
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    '1' {
        Write-Host "Installing EpicGames"
        cmd.exe /c winget install -e --id EpicGames.EpicGamesLauncher
        Write-Host "Finished Installing EpicGames" -ForegroundColor red
        Pause
        } 

    '2' {
        Write-Host "Uninstalling EpicGames"
        cmd.exe /c winget uninstall -e --id EpicGames.EpicGamesLauncher
        Write-Host "Finished Uninstalling EpicGames" -ForegroundColor red
        Pause
        } 
    }
    }
    until ($selection -eq 'q')
    
}

function GOG-Text {
    param (
        [string]$Title = 'GOG'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Install"
    Write-Host "2: Uninstall"
    Write-Host "Q: Press 'Q' to quit."
}

function GOG-Function {
    do
    {
    GOG-Text
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    '1' {
        Write-Host "Installing GOG"
        cmd.exe /c winget install -e --id GOG.Galaxy
        Write-Host "Finished Installing GOG" -ForegroundColor red
        Pause
        } 

    '2' {
        Write-Host "Uninstalling GOG"
        cmd.exe /c winget uninstall -e --id GOG.Galaxy
        Write-Host "Finished Uninstalling GOG" -ForegroundColor red
        Pause
        } 
    }
    }
    until ($selection -eq 'q')
    
}

function UbisoftConnect-Text {
    param (
        [string]$Title = 'UbisoftConnect'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Install"
    Write-Host "2: Uninstall"
    Write-Host "Q: Press 'Q' to quit."
}

function UbisoftConnect-Function {
    do
    {
    UbisoftConnect-Text
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    '1' {
        Write-Host "Installing UbisoftConnect"
        cmd.exe /c winget install -e --id Ubisoft.Connect
        Write-Host "Finished Installing UbisoftConnect" -ForegroundColor red
        Pause
        } 

    '2' {
        Write-Host "Uninstalling UbisoftConnect"
        cmd.exe /c winget uninstall -e --id Ubisoft.Connect
        Write-Host "Finished Uninstalling UbisoftConnect" -ForegroundColor red
        Pause
        } 
    }
    }
    until ($selection -eq 'q')
    
}

function XboxApp-Text {
    param (
        [string]$Title = 'XboxApp'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Install"
    Write-Host "2: Uninstall"
    Write-Host "Q: Press 'Q' to quit."
}

function XboxApp-Function {
    do
    {
    XboxApp-Text
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
    '1' {
        Write-Host "Installing XboxApp"
        cmd.exe /c winget install 9MV0B5HZVK9Z
        Write-Host "Finished Installing XboxApp" -ForegroundColor red
        Pause
        } 

    '2' {
        Write-Host "Uninstalling XboxApp"
        cmd.exe /c winget uninstall 9MV0B5HZVK9Z
        Write-Host "Finished Uninstalling XboxApp" -ForegroundColor red
        Pause
        } 
    }
    }
    until ($selection -eq 'q')
    
}


Start-Function