#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run script as root"
  else

echo "deb http://packages.openmediavault.org/public kralizec main" > /etc/apt/sources.list.d/openmediavault.list

apt-get update

apt-get install openmediavault-keyring postfix -y

apt-get update

apt-get install openmediavault -y

omv-initsystem

fi
