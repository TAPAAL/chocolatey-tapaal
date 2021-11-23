$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://download.tapaal.net/tapaal/tapaal-3.9/tapaal-3.9.0-win64.zip'
$checksum64  = '83508D3E7ECE3422C6A0DBA4964DFBA89E38CAB29292FE629FF9A89C672BE5DB'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  
  url64bit      = $url64
  
  softwareName  = 'tapaal'

  checksum64    = $checksum64
  checksumType64= 'sha256' 

}

Install-ChocolateyZipPackage @packageArgs 
