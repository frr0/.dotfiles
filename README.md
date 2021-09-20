# dotfiles

My personal dotfiles.

## Programs to download

- Python3
- LazyGit
- Node.js
- Texlive
- Pdftex
- Fzf
- Ranger
- Gcc
- Java
- zsh
- ohmyzsh


## VIM-PLUG

https://github.com/junegunn/vim-plug

neovim

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

vim

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
-------------------------------------------

## Coc-VIM

https://github.com/neoclide/coc.nvim

```
:CocInstall coc-json coc-tsserver
```

-------------------------------------------


### Coc-snippets

https://github.com/neoclide/coc-snippets

```
:CocInstall coc-snippets
```

-------------------------------------------

### Util-snippets

https://github.com/sirver/UltiSnips

-------------------------------------------

### IMPORTANT!!!

### COC Extensions

https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
https://github.com/neoclide/coc-sources #others(less important)

first for c/c++/c_object..
```
:CocInstall coc-clangd 
:CocInstall coc-python
:CocInstall coc-java
```
 and many others

--------------------------------------------------------------------------------------------------------

## Vimspector

https://github.com/puremourning/vimspector#supported-languages

```
:VimspectorInstall vscode-cpptools 
:VimspectorInstall vscode-java-debug 
:VimspectorInstall debugpy
```

 .vimspector.json

  example with c/cpp
```
  {
    "configurations": {
        "Launch": {
            "adapter": "vscode-cpptools",
            "configuration": {
                "request": "launch",
                "program": "${workspaceRoot}/program",
                "args": ["F1.txt", "F2.txt"],
                "cwd": "${workspaceRoot}",
                "environment": [],
                "externalConsole": true,
                "stopAtEntry": true,
                "MIMode": "gdb"
              }
            }
       }
  }
```
--------------------------------------------------------------------------------------------------------

## Dev-Icons

https://github.com/ryanoasis/vim-devicons                          #second
https://github.com/ryanoasis/nerd-fonts#font-installation          #first

```
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

--------------------------------------------------------------------------------------------------------

## Other

Without the following clones the debug won't work


```
git clone https://github.com/frr0/Project_create
```


In the home directory, cause if not, you'll have to modify the zsh aliases


```
git clone https://github.com/frr0/Dotfiles
```


just type "cc" and it will create a c project ready to work and debug, with all the file needed.
same thing for cpp by typing "ccp" (note! it's not a typo, type "ccp" or just change the alias)
others will be added

