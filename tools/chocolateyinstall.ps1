
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.librebeans.org/download/CoolBeans-2018.12.2-x64.exe'
$url64      = 'http://download.librebeans.org/download/CoolBeans-2018.12.2-x64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'coolbeans*'

  checksum      = 'ad469cf2fe8e909e5e9c3c26e275d9e1d4552d527e5d63795165baf0d0459561'
  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
