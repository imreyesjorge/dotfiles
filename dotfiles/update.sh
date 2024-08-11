#! /bin/bash

# Update Leftwm
rm -rf leftwm && cp -r $HOME/.config/leftwm .
rm -rf nvim && cp -r $HOME/.config/nvim .
rm -rf alacritty && cp -r $HOME/.config/alacritty .
