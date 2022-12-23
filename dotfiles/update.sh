#! /bin/bash

# Update Leftwm
rm -rf leftwm && cp -r $HOME/.config/leftwm .

# Update Eww
rm -rf eww && cp -r $HOME/.config/eww .

# Update Dunst
rm -rf dunst && cp -r $HOME/.config/dunst .
