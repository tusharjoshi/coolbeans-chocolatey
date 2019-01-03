# Chocolatey package for CoolBeans distribution

[CoolBeans](https://coolbeans.xyz) is a binary distribution of Apache NetBeans (incubating) IDE and this project is an attempt to create a chocolatey package for windows installation using the installer provided by https://coolbeans.xyz

[Chocolatey](https://chocolatey.org) is a package manager for Windows to install and uninstall packages using single command, like Homebrew and NPM

## Pre-requisite

This project assumes that Chocolatey is already installed and the `choco` command is working.  The choco command is invoked in an elevated command prompt on Windows.

## Building the package

```bash
choco pack
```

## Testing local installation

```bash
choco install coolbeans -s .
```

Here . represents the current directory where the nupkg file is located.  This file is the final built package using the `choco pack` command

## Local uninstall

```bash
choco uninstall coolbeans
```