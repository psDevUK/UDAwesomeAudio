$IndexJs = Get-ChildItem "$PSScriptRoot\index.*.bundle.js"
$AssetId = [UniversalDashboard.Services.AssetService]::Instance.RegisterAsset($IndexJs.FullName)

function New-UDAwesomeAudio {
    <#
    .SYNOPSIS
    Creates a new component
    
    .DESCRIPTION
    Creates a new component
    
    .PARAMETER Id
    The ID of this editor

    .PARAMETER Text
    Text for the component

    .EXAMPLE
    New-UDComponent -Text 'Hello, world!'
    #>
    
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [string]$Path,
        [Parameter()]
        [bool]$Loop = $true,
        [Parameter()]
        [decimal]$Volume = 1,
        [Parameter()]
        [bool]$Muted = $false
    )

    End {
        @{
            assetId  = $AssetId 
            isPlugin = $true 
            type     = "udawesomeaudio"
            id       = $Id

            src      = $Path
            loop     = $Loop
            volume   = $Volume
            muted    = $Muted
        }
    }
}