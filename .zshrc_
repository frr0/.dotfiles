# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/fra/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#
# ZSH_THEME="linuxonly"
# ZSH_THEME="refined"
# ZSH_THEME="simonoff"
ZSH_THEME="fino-time"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# # Created by new user for 5.8
#
alias r=ranger
alias t=tmux
alias q=exit
alias l=lazygit
alias n=nvim
alias m=make
alias b=bash
alias c=clear
alias f="nautilus ."
alias gt="gdb -tui"
# alias cda="cd **"
# alias na="n **"
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
alias cc="cp -r ~/Projects/Project_create/file_dot_c . && cd file_dot_c && n client.c"
alias ccp="cp -r ~/Projects/Project_create/file_dot_cpp . && cd file_dot_cpp && n client.cpp"
alias cy="cp -r ~/Projects/Project_create/file_dot_py . && cd file_dot_py && n client.py"
alias cj="cp -r ~/Projects/Project_create/file_dot_java . && cd file_dot_java && n client.java"

# bindkey <C-z> <C-t>

# t
# clear

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
# PROMPT='%F{green}√ %F{red}%~%f%F{green}${vcs_info_msg_0_}%f -> '



# zstyle ':vcs_info:git*' actionformats "%s  %r/%S %b %m%u%c "

SAVEHIST=1000
HISTFILE=~/.zsh_history

#Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

export PATH="$PATH:$HOME/.vim/bundle/vim-superman/bin"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

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
# PROMPT='%F{green}√ %F{red}%~%f%F{green}${vcs_info_msg_0_}%f -> '



# zstyle ':vcs_info:git*' actionformats "%s  %r/%S %b %m%u%c "

SAVEHIST=1000
HISTFILE=~/.zsh_history

#Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

export PATH="$PATH:$HOME/.vim/bundle/vim-superman/bin"
export PATH="$HOME/.config/lvim:$PATH"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/home/fra/.local/bin/lvim:$PATH"

