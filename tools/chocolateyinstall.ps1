$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://download.tapaal.net/tapaal/tapaal-3.7/tapaal-3.7.1-win64.zip'
$checksum64  = '5672F7A143B6127D0D6957B2C6BCF0CB7A32221B165265E3681BDF3E5FE212B5'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  
  url64bit      = $url64
  
  softwareName  = 'tapaal'

  checksum64    = $checksum64
  checksumType64= 'sha256' 

}
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 # Attemped workarround for TSL 1.2 not working on chocolatey validation servers, due to powershell 4.0 
Install-ChocolateyZipPackage @packageArgs 
