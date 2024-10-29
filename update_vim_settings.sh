#!/bin/bash

# Pull the latest version from the repository
echo "Pulling the latest version of Vim settings..."
git pull origin master

# Check if the pull was successful
if [ $? -ne 0 ]; then
    echo "Failed to pull the latest version. Please check your network connection or repository status."
    exit 1
fi

# Copy vimrc to ~/.vimrc
echo "Copying vimrc to ~/.vimrc..."
cp -f vimrc ~/.vimrc

# Copy new vim folder to ~/.vim
echo "Updating vim folder in ~/.vim..."
# rm -rf ~/.vim
cp -rf vim ~/.vim

# Notify user of completion
echo "Vim settings updated successfully!"

