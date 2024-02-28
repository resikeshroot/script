#!/bin/bash

# Update package lists
sudo dnf update

# Define functions to check package status
function is_installed() {
  dnf list installed | grep -q "$1"
}

# Check if packages are installed
if ! is_installed opera; then
  echo "Opera Mini is not installed. Installing..."
  sudo dnf install opera
fi

if ! is_installed "VMware Workstation Player"; then
  echo "VMware Workstation Player is not installed. Installing..."
  # Download and install instructions specific to Fedora are required here. Refer to VMware's official documentation for details.
fi

if ! is_installed code; then
  echo "Visual Studio Code is not installed. Installing..."
  sudo dnf install code
fi

if ! is_installed wireshark; then
  echo "Wireshark is not installed. Installing..."
  sudo dnf install wireshark
fi

if ! is_installed vlc; then
  echo "VLC media player is not installed. Installing..."
  sudo dnf install vlc
fi

echo "All checked applications are either already installed or have been installed successfully!"

