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
# ZSH_THEME="fino-time"


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
#plugins=(git)

source $ZSH/oh-my-zsh.sh

  plugins=(… zsh-completions)
  autoload -U compinit && compinit

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR=nvim
#export EDITOR=~/nvim.appimage
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
#alias n=~/nvim.appimage
alias m=make
alias b=bash
alias c=clear
alias h=htop
alias f="nautilus ."
alias gt="gdb -tui"
# alias cda="cd **"
# alias na="n **"
alias k="t kill-server"
alias zc="n ~/.zshrc"
alias szc="source ~/.zshrc"
alias v="n -S"
alias p="n -p"
alias nn="cd ~/.config/nvim/ && n init.vim"
alias i3="n ~/.config/i3/config"
alias la="ls -lah"
alias lh="ls -lh"
alias e="cd .. && cd .. && cd run/media/"
alias dot="cd ~/.dotfiles"
# alias t='tmux -2'
#alias mt="xrandr --output eDP-1 --off && xrandr --output DP-1 --auto --left-of HDMI-1"
alias mt="wlr-randr --output eDP-1 --off && xrandr --output DP-1 --auto --left-of HDMI-A-1"
alias cc="cp -r ~/Projects/Project_create/c . && cd c && n client.c"
alias ccc="cp -r ~/Projects/Project_create/c_adv . && cd c_adv && n client.c"
alias ccp="cp -r ~/Projects/Project_create/cpp . && cd cpp && n client.cpp"
alias cy="cp -r ~/Projects/Project_create/py . && cd py && n client.py"
alias cj="cp -r ~/Projects/Project_create/java . && cd java && n client.java"
alias cs="cp -r ~/Projects/Project_create/sh . && cd sh && chmod +x program.sh && n program.sh"
alias cm="cp -r ~/Projects/Project_create/md . && cd md && n note.md"
alias lab="cd ~/Dropbox\ \(Politecnico\ Di\ Torino\ Studenti\)/Anno_II.1/ADS/Algorithms_and_Data_Structure/ "
alias pandocs="pandoc --pdf-engine=xelatex -V geometry:"top=2cm, bottom=1.5cm, left=2cm, right=2cm" --highlight-style zenburn -V colorlinks -V urlcolor=NavyBlue  --toc -N -o"
alias apa="cd ~/Dropbox\ \(Politecnico\ Di\ Torino\ Studenti\)/Anno_II.1/ADS/theory_ex/Algorithms_and_Data_Structure_Library"
alias os="cd ~/Dropbox\ \(Politecnico\ Di\ Torino\ Studenti\)/Anno_III/Operating_Systems"
alias oo="cd ~/Dropbox\ \(Politecnico\ Di\ Torino\ Studenti\)/Anno_II.1/OOP/Object-oriented_Programming/Workspace"
alias ne="cd ~/Dropbox\ \(Politecnico\ Di\ Torino\ Studenti\)/Anno_III/Computer_Networks/Computer_Networks"
alias td="cd ~/Dropbox\ \(Politecnico\ Di\ Torino\ Studenti\)/ToDo && n note.md"
alias 19="cd ~/Projects/COVID-19"
alias co="cd ~/Projects/COVID-19 && gl && cd ~ | zathura ~/Projects/COVID-19/schede-riepilogative/regioni/dpc-covid19-ita-scheda-regioni-latest.pdf"
alias sc="cd ~/.local/bin/scripts;la"
alias pr="cd ~/Projects;la"
# alias pr="cd ~/Projects;la"

bindkey 'C-j' 'Up'
bindkey 'C-k' 'Down'
bindkey 'C-h' 'Left'
bindkey 'C-l' 'Right'


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

#HYPHEN_INSENSITIVE="true"

#autoload -Uz vcs_info
#precmd() { vcs_info }

 #setopt prompt_subst
# PROMPT='${vcs_info_msg_0_}%# '

# PROMPT='%(?.%F{green}√-FRA.%F{red}?%?)%f %B%F{240}%1~%f%b > '
# PROMPT='%F{green}√ %F{red}%~%f%F{green}${vcs_info_msg_0_}%f -> '



# zstyle ':vcs_info:git*' actionformats "%s  %r/%S %b %m%u%c "

#SAVEHIST=1000
#HISTFILE=~/.zsh_history

##Load Git completion
#zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
#fpath=(~/.zsh $fpath)

#autoload -Uz compinit && compinit



#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

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

#HYPHEN_INSENSITIVE="true"

#autoload -Uz vcs_info
#precmd() { vcs_info }

 #setopt prompt_subst
# PROMPT='${vcs_info_msg_0_}%# '

# PROMPT='%(?.%F{green}√-FRA.%F{red}?%?)%f %B%F{240}%1~%f%b > '
# PROMPT='%F{green}√ %F{red}%~%f%F{green}${vcs_info_msg_0_}%f -> '



# zstyle ':vcs_info:git*' actionformats "%s  %r/%S %b %m%u%c "

SAVEHIST=1000
HISTFILE=~/.zsh_history

#Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

#autoload -Uz compinit && compinit

#export PATH=$PATH:~/.local/bin/scripts
# export PATH="$PATH:$HOME/.vim/bundle/vim-superman/bin"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fino-time.zsh-theme

# Use with a dark background and 256-color terminal!
# Meant for people with RVM and git. Tested only on OS X 10.7.

# You can set your computer name in the ~/.box-name file if you want.

# Borrowing shamelessly from these oh-my-zsh themes:
#   bira
#   robbyrussell
#
# Also borrowing from http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '⠠⠵' && return
    echo '○'
}

function box_name {
  local box="${SHORT_HOST:-$HOST}"
  [[ -f ~/.box-name ]] && box="$(< ~/.box-name)"
  echo "${box:gs/%/%%}"
}

PROMPT="╭─%{$FG[040]%}%n%{$reset_color%} %{$FG[239]%}at%{$reset_color%} %{$FG[033]%}$(box_name)%{$reset_color%} %{$FG[239]%}in%{$reset_color%} %{$terminfo[bold]$FG[226]%}%~%{$reset_color%}\$(git_prompt_info)\$(ruby_prompt_info) %D - %*
╰─\$(virtualenv_info)\$(prompt_char) "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg[255]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[202]%}✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%}✔"
ZSH_THEME_RUBY_PROMPT_PREFIX=" %{$FG[239]%}using%{$FG[243]%} ‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"


