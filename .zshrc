# Created by new user for 5.8
#
alias r=ranger
alias t=tmux
alias q=exit
alias l=lazygit
alias n=nvim
alias m=make
alias b=bash
alias c=clear
alias k="t kill-server"
alias zc="nvim ~/.zshrc"
alias szc="source ~/.zshrc"
alias v="nvim -S"
alias p="nvim -p"
alias nn="nvim ~/.config/nvim/init.vim"
alias i3="nvim ~/.config/i3/config"
alias la="ls -lah"
alias lh="ls -lh"
alias e="cd .. && cd .. && cd run/media/"
alias dot="cd ~/Varie/dotfiles"
alias mt="xrandr --output eDP-1 --off && xrandr --output DP-1 --auto --left-of HDMI-1"
# alias man=vman

# plugins=(
#   git
#   bundler
#   dotenv
#   osx
#   rake
#   rbenv
#   ruby
# )

# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

HYPHEN_INSENSITIVE="true"

autoload -Uz vcs_info
precmd() { vcs_info }

 setopt prompt_subst
# PROMPT='${vcs_info_msg_0_}%# '

# PROMPT='%(?.%F{green}√-FRA.%F{red}?%?)%f %B%F{240}%1~%f%b > '
PROMPT='%F{green}√ %F{red}%~%f%F{green}${vcs_info_msg_0_}%f -> '



zstyle ':vcs_info:git*' actionformats "%s  %r/%S %b %m%u%c "

SAVEHIST=1000
HISTFILE=~/.zsh_history

#Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

export PATH="$PATH:$HOME/.vim/bundle/vim-superman/bin"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
