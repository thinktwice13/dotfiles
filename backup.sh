#!/bin/bash/

# Commit message timestamp
timestamp() {
  date +"%d-%m-%Y @ %T"
}

# Files
cp -pfv ~/.zshrc .
cp -pfv ~/.gitconfig .
# cp ~/.vimrc ~/dotfiles/.vimrc
cp -pRv ~/Library/ApplicationSupport/Code/User/keybindings.json ./Library/ApplicationSupport/Code/User/keybindings.json
cp -pRv ~/Library/ApplicationSupport/Code/User/settings.json ./Library/ApplicationSupport/Code/User/settings.json

# pull & push
if [[ `git status --porcelain` ]]; then
    git pull origin main
    git add .
    git commit -m "Update: $(timestamp)"
    git push origin main
fi