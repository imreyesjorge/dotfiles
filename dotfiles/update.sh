#! /bin/bash

# Update Leftwm
rm -rf leftwm && cp -r $HOME/.config/leftwm .
rm -rf nvim && cp -r $HOME/.config/nvim .
rm -rf ghostty && cp -r $HOME/.config/ghostty .
rm -rf tmux && cp -r $HOME/.config/tmux .
