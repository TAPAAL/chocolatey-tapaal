$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://download.tapaal.net/tapaal/tapaal-3.9/tapaal-3.9.3-win64.zip'
$checksum64  = 'E6DB9669D8A9934E0B87AD50EF6DA952913E4BB4DAD94A6407432F34F41A8E88'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  
  url64bit      = $url64
  
  softwareName  = 'tapaal'

  checksum64    = $checksum64
  checksumType64= 'sha256' 

}

Install-ChocolateyZipPackage @packageArgs 
