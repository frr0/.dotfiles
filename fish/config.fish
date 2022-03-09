if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

export EDITOR=nvim
fish_add_path ~/.local/bin/scripts

alias _='sudo '

alias r=ranger
alias t=tmux
alias q=exit
alias l=lazygit
# alias n=~/nvim.appimage
alias n=nvim
alias a=cdh
alias m=make
alias b=bash
alias c=clear
alias h=htop
alias f="nautilus ."
alias gt="gdb -tui"
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
alias mt="xrandr --output eDP-1 --off && xrandr --output DP-1 --auto --left-of HDMI-1"
alias cc="cp -r ~/Projects/Project_create/c . && cd c && n client.c"
alias ccc="cp -r ~/Projects/Project_create/c_adv . && cd c_adv && n client.c"
alias ccp="cp -r ~/Projects/Project_create/cpp . && cd cpp && n client.cpp"
alias cy="cp -r ~/Projects/Project_create/py . && cd py && n client.py"
alias cj="cp -r ~/Projects/Project_create/java . && cd java && n client.java"
alias cs="cp -r ~/Projects/Project_create/sh . && cd sh && chmod +x program.sh && n program.sh"
alias cm="cp -r ~/Projects/Project_create/md . && cd md && n note.md"
alias lab="cd ~/Dropbox\ \(Politecnico\ Di\ Torino\ Studenti\)/Anno_II.1/ADS/Algorithms_and_Data_Structure/ "
alias apa="cd ~/Dropbox\ \(Politecnico\ Di\ Torino\ Studenti\)/Anno_II.1/ADS/theory_ex/Algorithms_and_Data_Structure_Library"
alias os="cd ~/Dropbox\ \(Politecnico\ Di\ Torino\ Studenti\)/Anno_III/Operating_Systems"
alias oo="cd ~/Dropbox\ \(Politecnico\ Di\ Torino\ Studenti\)/Anno_II.1/OOP/Object-oriented_Programming/Workspace"
alias ne="cd ~/Dropbox\ \(Politecnico\ Di\ Torino\ Studenti\)/Anno_III/Computer_Networks/Computer_Networks"
alias td="cd ~/Dropbox\ \(Politecnico\ Di\ Torino\ Studenti\)/ToDo && n note.md"
alias 19="cd ~/Projects/COVID-19"
alias co="cd ~/Projects/COVID-19 && gl && cd ~ | zathura ~/Projects/COVID-19/schede-riepilogative/regioni/dpc-covid19-ita-scheda-regioni-latest.pdf"
alias sc="cd ~/.local/bin/scripts;la"
alias pi="ssh pi@192.168.1.134"

# Aliases
alias g='git'
alias ga='git stage'
alias gst='git status'
alias gl='git pull'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gco='git checkout'
alias gcm='git checkout master'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias glg='git log --stat --max-count=5'
alias glgg='git log --graph --max-count=5'
alias gss='git status -s'
alias gf='git add'
alias gm='git merge'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'

# these aliases take advantage of the previous function
# alias ggpull='git pull origin $(current_branch)'
# alias ggpush='git push origin $(current_branch)'
# alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'

# Git and svn mix
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'
alias gsr='git svn rebase'
alias gsd='git svn dcommit'



function fish_prompt
  # Cache exit status
  set -l last_status $status

  # Just calculate these once, to save a few cycles when displaying the prompt
  if not set -q __fish_prompt_hostname
    set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
  end
  if not set -q __fish_prompt_char
    switch (id -u)
      case 0
	set -g __fish_prompt_char '#'
      case '*'
	set -g __fish_prompt_char 'λ'
    end
  end

  # Setup colors
  #use extended color pallete if available
#if [[ $terminfo[colors] -ge 256 ]]; then
#    turquoise="%F{81}"
#    orange="%F{166}"
#    purple="%F{135}"
#    hotpink="%F{161}"
#    limegreen="%F{118}"
#else
#    turquoise="%F{cyan}"
#    orange="%F{yellow}"
#    purple="%F{magenta}"
#    hotpink="%F{red}"
#    limegreen="%F{green}"
#fi
  set -l normal (set_color normal)
  set -l white (set_color FFFFFF)
  set -l turquoise (set_color 5fdfff)
  set -l orange (set_color df5f00)
  set -l hotpink (set_color df005f)
  set -l blue (set_color blue)
  set -l limegreen (set_color 87ff00)
  set -l purple (set_color af5fff)
  set -l green (set_color 56B000)
  set -l blu (set_color 5A5AEE)
  set -l yellow (set_color FFFF00)
  set -l yellow2 (set_color fdff90)
  set -l yellow3 (set_color F4F776)
 
  # Configure __fish_git_prompt
  set -g __fish_git_prompt_char_stateseparator ' '
  set -g __fish_git_prompt_color 5fdfff
  set -g __fish_git_prompt_color_flags df5f00
  set -g __fish_git_prompt_color_prefix white
  set -g __fish_git_prompt_color_suffix white
  set -g __fish_git_prompt_showdirtystate true
  set -g __fish_git_prompt_showuntrackedfiles true
  set -g __fish_git_prompt_showstashstate true
  set -g __fish_git_prompt_show_informative_status true 

  set -l current_user (whoami)

  # Line 1
  echo -n $white'╭─'$green$current_user$white' at '$blue$__fish_prompt_hostname$white' in '$yellow(pwd|sed "s=$HOME=~=")$turquoise
  __fish_git_prompt " (%s)" 
  echo

  # Line 2
  echo -n $white'╰'
  # support for virtual env name
  if set -q VIRTUAL_ENV
      echo -n "($white"(basename "$VIRTUAL_ENV")"$white)"
  end
  echo -n $white'─'$__fish_prompt_char $normal
end


  function fish_right_prompt 
	set -l exit_code $status
  __tmux_prompt
  if test $exit_code -ne 0
    set_color -o red
  else
    set_color 666666
  end
  printf '%d' $exit_code
  set_color 666666
  printf ' [%s]' (date +%H:%M:%S)
  set_color normal
end

function __tmux_prompt
  set multiplexer (_is_multiplexed)

  switch $multiplexer
    case screen
      set pane (_get_screen_window)
    case tmux
      set pane (_get_tmux_window)
   end

  set_color 666666
  if test -z $pane
    echo -n ""
  else
    echo -n $pane' | '
  end
end

function _get_tmux_window
  tmux lsw | grep active | sed 's/\*.*$//g;s/: / /1' | awk '{ print $2 "-" $1 }' -
end

function _get_screen_window
  set initial (screen -Q windows; screen -Q echo "")
  set middle (echo $initial | sed 's/  /\n/g' | grep '\*' | sed 's/\*\$ / /g')
  echo $middle | awk '{ print $2 "-" $1 }' -
end

function _is_multiplexed
  set multiplexer ""
  if test -z $TMUX
  else
    set multiplexer "tmux"
  end
  if test -z $WINDOW
  else
    set multiplexer "screen"
  end
  echo $multiplexer
end
