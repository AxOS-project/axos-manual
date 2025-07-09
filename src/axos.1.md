% axos(1) - AXOS Manual
% AxOS team
% July 2025

# NAME

AxOS - lightweight Arch-based OS with a focus on minimalism and aesthetics

# DESCRIPTION

**AxOS** is a lightweight, Arch-based Linux distribution that focuses on providing a sleek and aesthetic look with minimal to no configuration.

This man page serves as an overview to AxOS cli installation.

## INSTALLATION METHODS

## Command line installation

The cli axos installer comes with the name _axinstall-cli_. _axinstall_ (the GUI installer) users _axinstall-cli_ under the hood to function.

## Autopartition the drive

```bash
# autopartition /dev/sda with efi enabled
axinstall-cli partition auto /dev/sda --efi

# autopartition /dev/nvmen0 with efi disabled
axinstall-cli partition auto /dev/nvmen0
```

### Install base packages

```bash
axinstall-cli install-base
```

### Install bootloader

```bash
# install as efi with esp being /boot/efi
axinstall-cli bootloader grub-efi /boot/efi

# install as legacy on /dev/sda
axinstall-cli bootloader grub-legacy /dev/sda
```

### Generate fstab

```bash
axinstall-cli genfstab
```

### Configuring locale settings

```bash
# setting the keyboard layout to colemak, the timezone to Europe/Berlin and set en_US.UTF-8 as the locale
axinstall-cli locale colemak Europe/Berlin en_US.UTF-8 UTF-8
```

### Configure network settings

```bash
# set the hostname to getcryst.al with ipv6 disabled
axinstall-cli networking getcryst.al

# set the hostname to getcryst.al with ipv6 enabled
axinstall-cli networking getcryst.al --ipv6
```

### Setup swap

```bash
# enable swap
axinstall-cli swap X # whhere X is the size in MiB
```

### Configure users

```bash
# make a new user called nonRootHaver, without sudo, easytohack as the password and bash as the default shell
axinstall-cli users new-user nonRootHaver easytohack bash

# make a user called rootHaver, with sudo, omgsosuperhardtohack as the password and fish as the default shell
axinstall-cli users new-user rootHaver omgsuperhardtohack fish --hasroot
```

### Set root password

```bash
# set the root password to 'muchSecurity,veryHardToHack'
axinstall-cli users root-password muchSecurity,veryHardToHack
```

### Install a desktop environment

```bash
# install onyx
axinstall-cli desktops onyx

# install gnome
axinstall-cli desktops gnome
```

### Setup nvidia

```bash
axinstall-cli nvidia
```

### Setup keyring

```bash
axinstall-cli setup-keyring
```

### Install a user kit

```bash
axinstall-cli user-kit artist
axinstall-cli user-kit developer
axinstall-cli user-kit hacker
```

### Debug logging

debug messages:

```bash
axinstall-cli -v
```

traces:

```bash
axinstall-cli -vv
```

## Graphical installation

For regular users, **axos(7)** provides a manual on GUI alternative to axinstall-cli - the axinstall.
