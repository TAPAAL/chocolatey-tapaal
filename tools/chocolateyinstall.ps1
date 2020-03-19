$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'http://download.tapaal.net/fileadmin/download/tapaal-3.6/tapaal-3.6.1-win64.zip'
$checksum64  = '60A1E453482D8EF0AD77961281EE6FDFCD86B2AB5F7A4AB22BFC3D9833014294'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  
  url64bit      = $url64
  
  softwareName  = 'tapaal'

  checksum64    = $checksum64
  checksumType64= 'sha256' 

}

Install-ChocolateyZipPackage @packageArgs 
