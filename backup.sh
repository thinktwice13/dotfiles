#!/bin/bash/

# Commit message timestamp
timestamp() {
  date +"%d-%m-%Y @ %T"
}

# Files
cp -pfv ~/.zshrc .
cp -pfv ~/.gitconfig .
cp -pfv ~/.vimrc ~/dotfiles/
cp -pRv ~/Library/ApplicationSupport/Code/User/keybindings.json ./Library/ApplicationSupport/Code/User/keybindings.json
cp -pRv ~/Library/ApplicationSupport/Code/User/settings.json ./Library/ApplicationSupport/Code/User/settings.json

# pull & push
if [[ `git status --porcelain` ]]; then
    git pull origin master
    git add .
    git commit -m "Update: $(timestamp)"
    git push origin master
fi