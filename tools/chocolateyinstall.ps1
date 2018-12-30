
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://amsterdam.download.coolbeans.xyz/download/CoolBeans-2018.12.exe'
$url64      = 'https://amsterdam.download.coolbeans.xyz/download/CoolBeans-2018.12.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'coolbeans*'

  checksum      = '95BB39BB3772497BB9222BBE7A9C74269AA49D6F02B42E6C4E25621212C54B0B'
  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs










    








