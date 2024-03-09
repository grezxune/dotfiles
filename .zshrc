# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#
#                          ⢸⣦⡈⠻⣿⣿⣿⣶⣄
#                          ⢸⣿⣿⣦⡈⠻⣿⣿⣿⣷⣄
#                    ⣀⣀⣀⣀⣀⣀⣼⣿⣿⣿⣿ ⠈⠻⣿⣿⣿⣷⣄
#                    ⠈⠻⣿⣿⣿⣿⣿⡿⠿⠛⠁   ⠈⠻⢿⣿⣿⣷⣄
#
# Personal zsh configuration of Jess Archer <jess@jessarcher.com>

#--------------------------------------------------------------------------
# Oh My Zsh
#--------------------------------------------------------------------------

export ZSH=$HOME/.oh-my-zsh

#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
#VI_MODE_SET_CURSOR=true
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
ZETTELKASTEN_LOCATION="/Users/Tommy/Documents/obsidian/zettelkasten"

plugins=(
    npm
    vi-mode
    cp
    dnf
    docker
    docker-compose
    git
    httpie
    rsync
    #tmux
    z
)

source $ZSH/oh-my-zsh.sh

#--------------------------------------------------------------------------
# Configuration
#--------------------------------------------------------------------------

export ANDROID_HOME=~/Library/Android/Sdk \
export ANDROID_SDK_ROOT=~/Library/Android/Sdk \
export ANDROID_AVD_HOME=~/.android/avd

# Decrease delay that vi-mode waits for the end of a key sequence
export KEYTIMEOUT=15

typeset -U path cdpath fpath
path=(
    $HOME/.local/bin
    $HOME/.go/bin
    $HOME/.cargo/bin
    $HOME/go/bin
    $HOME/tools/lua-language-server/bin
    /usr/local/go/bin
    ./vendor/bin
    ${ANDROID_HOME}tools/
    ${ANDROID_HOME}platform-tools/
    $HOME/Documents/android-studio/bin
    $HOME/nvim-macos-dev/bin
    $path
)

setopt auto_cd
cdpath=(
    $HOME/Code
)

zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format %d
zstyle ':completion:*:descriptions' format %B%d%b
zstyle ':completion:*:complete:(cd|pushd):*' tag-order \
    'local-directories named-directories'

export EDITOR=vim
export GIT_EDITOR=vim
export NVIM_LISTEN_ADDRESS=/tmp/nvimsocket
export FZF_DEFAULT_COMMAND='ag -u -g ""'

unsetopt sharehistory

#--------------------------------------------------------------------------
# Aliases
#--------------------------------------------------------------------------

alias vim="nvim"
alias copy="xclip -selection clipboard"
alias paste="xclip -o -selection clipboard"
alias webcam="gphoto2 --stdout --capture-movie | ffmpeg -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video2"
alias sail='[ -f sail ] && sail || vendor/bin/sail'
alias cat='cat'

# Git
alias g="git"
alias gs="git status"
alias gaa="git add ."
alias nah="git reset --hard;git clean -df"
alias co="git checkout"
alias main='git checkout $([ `git rev-parse --quiet --verify master` ] && echo "master" || echo "main")'
alias lg="lazygit"

# Docker
alias d="docker"
alias dc="docker compose"

open () {
    xdg-open $* > /dev/null 2>&1
}


#--------------------------------------------------------------------------
# Miscellaneous
#--------------------------------------------------------------------------

### Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
### Fix slowness of pastes

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#if [[ $- == *i* && $0 == '/usr/bin/zsh' ]]; then
    #~/.dotfiles/scripts/login.sh
#fi
alias luamake=/luamake

source $ZSH/oh-my-zsh.sh
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

autoload -U compinit && compinit -u

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pnpm
export PNPM_HOME="/Users/tommy/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
