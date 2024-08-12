#! /bin/bash

# Author: Jorge Reyes <jorge@reyes.im>
#
# Note: At this time, this is meant to be used on a fresh Arch linux 
# installation and made to suit my personal needs. Be cautious if you 
# want to use this yourself.
CURRENT_USER=$(whoami)
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
BOLD='\033[1m'
UNDERLINE='\033[4m'
NC='\033[0m'

if [ "$CURRENT_USER" = "root" ]; then
  echo -e "${BOLD}${RED}Don't run this command as a super-user${NC}"
  exit 1
fi

# Ensure that `git` is installed in the system
if ! command -v git &> /dev/null
then
  sudo pacman -S --needed git base-devel
fi

# Install `yay`
if ! command -v yay &> /dev/null
then
  echo "Trying to install yay"
  if ! sudo git clone https://aur.archlinux.org/yay-git.git /opt/yay-git; then
    echo -e "${BOLD}${YELLOW}Warning: ${NC}found yay build files at /opt/yay-git."
  fi

  sudo chown "$CURRENT_USER" /opt/yay-git
  cd /opt/yay-git
  makepkg -si
fi

# Install missing dependencies
yay -S --needed eww leftwm dunst picom alacritty dmenu ttf-ubuntu-mono-nerd pywal-git

if [ -f /etc/xdg/autostart/picom.desktop ]; then
  sudo mv /etc/xdg/autostart/picom.desktop /etc/xdg/autostart/picom.desktop.disabled
fi

# Copy dotfiles
cp -r $SCRIPTPATH/dotfiles/alacritty $HOME/.config/
cp -r $SCRIPTPATH/dotfiles/nvim $HOME/.config/
cp -r $SCRIPTPATH/dotfiles/leftwm $HOME/.config/
