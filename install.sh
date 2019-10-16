#!/bin/bash

cp -r chc_sheets ~/Documents/
if [ -d "~/bin" ] ; then
        mkdir ~/bin
fi
cp chc ~/bin

if [ -z "$ZSH_NAME" ] ; then
        echo PATH=$PATH:$HOME/bin >> ~/.zshrc
        echo "Added /bin to PATH"
elif [ -z "$BASH_VERSION" ] ; then
        echo PATH=$PATH:$HOME/bin >> ~/.bashrc
        echo "Added /bin to PATH"
else
        echo "Did not find supported shell, try Bash or Zsh"
fi
