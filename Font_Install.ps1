 Write-host 'Installasjon av fonter' -foreground Yellow
#Font Locations
    #Font Location
    $FontPath= "\\networklocation\hum\hum"

$FONTS = 0x14
$objShell = New-Object -ComObject Shell.Application
$objFolder = $objShell.Namespace($FONTS)

$Fontdir = dir $FontPath
foreach($File in $Fontdir) 
{
  if ((Test-Path "C:\Windows\Fonts\$File") -eq $False)
    {
    $objFolder.CopyHere($File.fullname,0x10)
    }
} 
