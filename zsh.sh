#!/usr/bin/env sh

echo '- - -'
echo 'zsh config'
echo '- - -'

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# install WGET with Homebrew and download original bullet-train theme file
brew install wget && wget -O ./config/bullet-train.zsh-theme http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme

if [ -f "~/.zshrc" ]; then
  rm -fv ~/.zshrc
fi

#symlink .zshrc
ln -sv $DIR/config/.zshrc ~/.zshrc

# syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

if [ -f ~/.oh-my-zsh/themes/bullet-train.zsh-theme ]; then
  rm -fv ~/.oh-my-zsh/custom/bullet-train.zsh-theme
fi

# symlink theme file
ln -sv $DIR/config/bullet-train.zsh-theme ~/.oh-my-zsh/themes/bullet-train.zsh-theme
