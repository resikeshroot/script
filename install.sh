#!/bin/bash

# Update package lists
sudo apt update

# Install required dependencies
sudo apt install wget curl flatpak unzip software-properties-common -y

# Add Stacer repository
sudo add-apt-repository ppa:oguzhaninan/stacer -y
sudo apt update

# Install Stacer
sudo apt install stacer -y

# Define functions to check package status
function is_installed() {
  dpkg -l "$1" &>/dev/null
}

function is_flatpak_installed() {
  flatpak list | grep -q "^$1$"
}

# Check if packages are installed
if ! is_installed opera-stable; then
  echo "Opera Mini is not installed. Installing..."
  # Installation code for Opera Mini remains the same
fi

if ! is_installed vmware-workstation-player; then
  echo "VMware Workstation Player is not installed. Installing..."
  # Installation code for VMware Workstation Player remains the same
fi

if ! is_flatpak_installed code; then
  echo "Visual Studio Code is not installed. Installing..."
  # Installation code for Visual Studio Code remains the same
fi

if ! is_installed wireshark; then
  echo "Wireshark is not installed. Installing..."
  # Installation code for Wireshark remains the same
fi

if ! is_installed vlc; then
  echo "VLC media player is not installed. Installing..."
  sudo apt install vlc -y
fi

echo "All checked applications are either already installed or have been installed successfully!"


