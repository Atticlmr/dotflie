#!/bin/bash
# maybe, I`ll do it later, but not now~

set -e
echo "[Atticlmr dotfiles] start installing..."

OS=$(uname -s)
case "$OS" in
  Linux*)
    if [ -f /etc/os-release ]; then
      . /etc/os-release
      if [ "$ID" != "ubuntu" ]; then
        echo "Unsupported Linux distribution: $ID"
        exit 1
      fi
      echo "Ubuntu detected, continue installing..."
    else
      echo "Cannot determine Linux distribution."
      exit 1
    fi
    ;;
  Darwin*)
    echo "macOS"
    echo "TODO: macOS specific message"
    echo "Currently only Ubuntu is supported. Exiting."
    exit 1
    ;;
  *)
    echo "Unsupported OS: $OS"
    exit 1
    ;;
esac
