$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


$url        = '' #64-bit only package
$checksum   = '' #64-bit only package

$url64      = 'http://tapaal.net/fileadmin/download/tapaal-3.6/tapaal-3.6.0-win64-choco.zip' 
$checksum64  = '5975F8C11C501E466BE3F913690CA8B4938BE82DBCE4E466034A69B4780E8E7C'


$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  
  url           = $url
  url64bit      = $url64
  
  softwareName  = 'tapaal' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  # Checksums are now required as of 0.10.0.
  checksum      = $checksum
  checksumType  = 'sha256' 
  checksum64    = $checksum64
  checksumType64= 'sha256' 

}

Install-ChocolateyZipPackage @packageArgs # https://chocolatey.org/docs/helpers-install-chocolatey-zip-package

#Setup start-menu link

## Set up a file association
## - https://chocolatey.org/docs/helpers-install-chocolatey-file-association
#Install-ChocolateyFileAssociation 
