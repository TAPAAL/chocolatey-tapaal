$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://download.tapaal.net/tapaal/tapaal-3.8/tapaal-3.8.0-win64.zip'
$checksum64  = '459ED9A1BB796039A1A20AEB6C16A2021FBC8C8279644DED8C2F8D5D7CAD6274'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  
  url64bit      = $url64
  
  softwareName  = 'tapaal'

  checksum64    = $checksum64
  checksumType64= 'sha256' 

}

Install-ChocolateyZipPackage @packageArgs 
