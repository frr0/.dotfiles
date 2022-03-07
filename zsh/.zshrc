# Exports and themes

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="fino-time"

plugins=(git)
source $ZSH/oh-my-zsh.sh

export EDITOR=nvim
export PATH=$PATH:~/.local/bin/scripts

SAVEHIST=1000
HISTFILE=~/.zsh_history

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Alias

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
alias np="cd ~/.config/nvim/ && n lua/user/plugins.lua"
alias i3="n ~/.config/i3/config"
alias la="ls -lah"
alias lh="ls -lh"
alias e="cd .. && cd .. && cd run/media/"
alias dot="cd ~/.dotfiles"
# alias t='tmux -2'
#alias mt="xrandr --output eDP-1 --off && xrandr --output DP-1 --auto --left-of HDMI-1"
alias mt="wlr-randr --output eDP-1 --off"
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
alias co="codium ."
alias pi="ssh pi@192.168.1.134"
# alias pr="cd ~/Projects;la"
bindkey 'C-j' 'Up'
bindkey 'C-k' 'Down'
bindkey 'C-h' 'Left'
bindkey 'C-l' 'Right'
