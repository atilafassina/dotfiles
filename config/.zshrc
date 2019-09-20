# Path to your oh-my-zsh installation.
export ZSH=/Users/atilafassina/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="honukai"
# ZSH_THEME="miloshadzic"
# ZSH_THEME="materialshell-electro"
 ZSH_THEME="materialshell"
# ZSH_THEME="spaceship"
# ZSH_THEME="bullet-train"
# ZSH_THEME=""
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins+=(zsh-nvm)
plugins+=(zsh-autosuggestions)
plugins+=(zsh-syntax-highlighting)


# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.yarn/bin:$PATH"

alias v="openNvim"
alias dock-spacer="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}' && killall Dock"
alias gs="git status -s"
alias cat="bat"
alias wttr="curl wttr.in"
alias ll="exa"

export NVM_DIR="$HOME/.nvm"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
 iterm2_print_user_vars() {
   iterm2_set_user_var nodeVersion $(node -v)
   iterm2_set_user_var pwd $(pwd)
 }

function openNvim {
  if [ $# -eq 0 ]; then
    nvim ./
  else
    nvim $1
  fi
}

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
