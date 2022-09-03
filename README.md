# UDAwesomeAudio
Gives a button to allow you to play MP3 audio on your Powershell Universal Dashboards

```
<#
    .SYNOPSIS
    Allows you to play Audio on a Powershell Universal dashboard
    
    .DESCRIPTION
    Custom component for playing audio on your dashboard via a button. I built this custom component as I know, no component exists to play audio on the dashboard. Now there is a component.
    
    .PARAMETER Id
    The ID of this editor

    .PARAMETER Path
    The URL path to the MP3 file you wish to play

    .PARAMETER Loop
    Gives the ability to loop the MP3 using a boolean value of true or false. Defaulted to true
    
    .PARAMETER Volume
    Allows you to control the volume of the MP3 being played this is defaulted to one which is the maximum, this accepts a decimal number as the input
    
    .PARAMETER Muted
    Gives the ability to mute the MP3 using a boolean value of true or false. Defaulted to false
     

    .EXAMPLE
    New-UDAwesomeAudio -Path "https://p.scdn.co/mp3-preview/d09498fe7e41e26b90682c3b5a0819bbcc3378e2"
    #>
    
```
