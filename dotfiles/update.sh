#! /bin/bash

# Update Leftwm
rm -rf leftwm && cp -r $HOME/.config/leftwm .

# Update Rofi
rm -rf rofi && cp -r $HOME/.config/rofi .

# Update Polybar
rm -rf polybar && cp -r $HOME/.config/polybar .

# Update Fish
rm -rf fish && cp -r $HOME/.config/fish .

# Update Dunst
rm -rf dunst && cp -r $HOME/.config/dunst .

# Update Alacritty
rm -rf alacritty && cp -r $HOME/.config/alacritty .
