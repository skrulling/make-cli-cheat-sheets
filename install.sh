#!/bin/bash

cp -r chc_sheets ~/Documents/
echo "Copied sheets to ~/Documents/chc_sheets"

if [ ! -d "~/bin" ] ; then
        echo "Added a new folder /bin to HOME"
        mkdir ~/bin
fi
cp chc ~/bin/

if [ -z "$ZSH_NAME" ] ; then
        echo "PATH=\"\$PATH:\$HOME/bin\"" >> ~/.zshrc
        echo "Added /bin to PATH"
elif [ -z "$BASH_VERSION" ] ; then
        echo "PATH=\"\$PATH:\$HOME/bin\"" >> ~/.bashrc
        echo "Added /bin to PATH"
else
        echo "Did not find supported shell, try Bash or Zsh"
fi
