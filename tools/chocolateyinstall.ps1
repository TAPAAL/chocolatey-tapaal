$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'http://download.tapaal.net/fileadmin/download/tapaal-3.6/tapaal-3.6.0-win64-choco.zip' 
$checksum64  = '5975F8C11C501E466BE3F913690CA8B4938BE82DBCE4E466034A69B4780E8E7C'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  
  url64bit      = $url64
  
  softwareName  = 'tapaal'

  checksum64    = $checksum64
  checksumType64= 'sha256' 

}

Install-ChocolateyZipPackage @packageArgs 
