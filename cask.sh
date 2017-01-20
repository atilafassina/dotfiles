#!/usr/bin/env sh

echo "- - -"
echo "Apps in cask"
echo "- - -"

# get current location
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# install VSCode with Homebrew and download original bullet-train theme file
brew cask uninstall --force visual-studio-code && brew cask install visual-studio-code

if [ -L ~/Library/Application\ Support/Code/user/settings.json ]; then
  rm ~/Library/Application\ Support/Code/User/settings.json
fi

ln -s $DIR/config/visual-studio-code-settings.json ~/Library/Application\ Support/Code/User/settings.json
