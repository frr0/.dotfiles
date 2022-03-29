# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias r=ranger
alias t=tmux
alias q=exit
alias l=lazygit
alias n=nvim
alias m=make
bind '"\M-x":cd **'
#alias e=../run/media/fra
bind '"\C-o":"open_with_fzf\n"'
bind '"\C-a":"cd_with_fzf\n"'
bind '"\C-e":"open_with_nvim\n"'
alias o=open_with_nvim

# open_with_fzf(){
    # fzf -m --preview=" xdg-mime query default {}" | xargs -ro -d "\n" xdg-open 2>&-
# }
open_with_nvim(){
    fzf -m --preview=" xdg-mime query default {}" | xargs -ro -d "\n" nvim 2>&-
}

cd_with_fzf() {
cd $HOME && cd "$(fd -t d | fzf --preview="tree -L 1 {}"  --preview-window=:hidden)" 
}

# cd_with_fzf() {
# cd $HOME && cd "$(fd -t d | fzf --preview="tree -L 1 {}" --bind="<tab>:toggle-preview" --preview-window=:hidden)"
# }

open_with_fzf() {
fd -t f -H -I | fzf -m --preview="xdg-mime query default {}" | xargs -ro -d "\n" xdg-open 2>&-
}

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# export PATH="/home/fra/.local/bin/lvim:$PATH"
# export PATH="$HOME/fra/.local/bin/lvim:$PATH"
# export PATH=".local/bin/lvim:$PATH"
#
# export PATH="$PATH:$HOME/fra/.local/bin/lvim"
# export PATH="$PATH:.local/bin/lvim"
#
. "$HOME/.cargo/env"
