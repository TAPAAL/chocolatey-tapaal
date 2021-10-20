$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://download.tapaal.net/tapaal/tapaal-3.8/tapaal-3.8.0-win64.zip'
$checksum64  = 'EBCD013579B19EB4D2E19AD9EC8E94E600A170C35122A4A062DC0DFB70E72528'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  
  url64bit      = $url64
  
  softwareName  = 'tapaal'

  checksum64    = $checksum64
  checksumType64= 'sha256' 

}

Install-ChocolateyZipPackage @packageArgs 
