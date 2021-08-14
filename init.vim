" INIT.VIM
"
" Copyright © 2021
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the "Software"),
" to deal in the Software without restriction, including without limitation
" the rights to use, copy, modify, merge, publish, distribute, sublicense,
" and/or sell copies of the Software, and to permit persons to whom the
" Software is furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included
" in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
" OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
" IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
" TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
" OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

"--------------------------------------------------------------------------------------------------------
"Clone just this file
"
"wget https://raw.githubusercontent.com/frr0/Dotfiles/main/init.vim
"
"--------------------------------------------------------------------------------------------------------

"Programs to download
"
"Python3
"LazyGit
"Node.js
"Texlive
"Pdftex
"Fzf
"Ranger
"Gcc
"Java
"
"---------------------------------------------------------------------------------------------------------
"
"Useful sites and commands
"
"-------------------------------------------
"
"VIM-PLUG
"
"https://github.com/junegunn/vim-plug
"
"neovim
"
"sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"
"vim
"
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
"-------------------------------------------
"
"Coc-VIM
"
"https://github.com/neoclide/coc.nvim
"
":CocInstall coc-json coc-tsserver
"
"-------------------------------------------
"
"coc-settings.json for c/cpp...
"
"file to be added in .config/nvim (same folder of init.vim)
"not sure if it is necessary
"
" {
" "languageserver": {
"   "clangd": {
"     "command": "clangd",
"     "rootPatterns": ["compile_flags.txt", "compile_commands.json"],
"     "filetypes": ["c", "cc", "cpp", "c++", "objc", "objcpp"]
"   }
" }
" }
"
"-------------------------------------------
"
"Coc-snippets
"
"https://github.com/neoclide/coc-snippets
"
":CocInstall coc-snippets
"
"-------------------------------------------
"
"Util-snippets
"
"https://github.com/sirver/UltiSnips
"
"-------------------------------------------
"
"IMPORTANT!!!
"
"COC Extensions
"
"https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
"https://github.com/neoclide/coc-sources #others(less important)
"
":CocInstall coc-clangd #c/c++/c_object..
":CocInstall coc-python
":CocInstall coc-java
" and many others
"
"--------------------------------------------------------------------------------------------------------
"
"https://github.com/puremourning/vimspector#supported-languages
"
":VimspectorInstall vscode-cpptools vscode-java-debug debugpy
"
" .vimspector.json
"
" example w/ c/cpp
"
" {
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
"             }
"           }
"      }
" }


"--------------------------------------------------------------------------------------------------------
"
"Dev-Icons
"
"https://github.com/ryanoasis/vim-devicons                          #second
"https://github.com/ryanoasis/nerd-fonts#font-installation          #first
"
"mkdir -p ~/.local/share/fonts
"cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
"
"--------------------------------------------------------------------------------------------------------
"
"
"W/out the following clones the debug won't work
"
"
"git clone https://github.com/frr0/Project_create
"
"
"In the home directory, cause if not, you'll have to modify the zsh aliases
"
"
"git clone https://github.com/frr0/Dotfiles
"
"
"just type "cc" and it will create a c project ready to work and debug, with all the file needed.
"same thing for cpp by typing "ccp" (note! it's not a typo, type "ccp" or just change the alias)
"others will be added
"
"
"--------------------------------------------------------------------------------------------------------

set rnu
set nu
let mapleader=","
set timeout timeoutlen=1500
set tabstop=2
set shiftwidth=4
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set encoding=UTF-8
set noshowmode
" set spell
set nospell
set spelllang=en_us

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

syntax on
set mouse=a

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'wikitopian/hardmode'
Plug 'tclem/vim-arduino'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
Plug 'KabbAmine/vCoolor.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'mfussenegger/nvim-dap'
Plug 'puremourning/vimspector'
Plug 'neoclide/coc.nvim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'brennier/quicktex'                             
Plug 'raimondi/delimitmate'                         
Plug 'liuchengxu/vim-which-key'
Plug 'majutsushi/tagbar'                                          
Plug 'scrooloose/nerdcommenter'                                  
Plug 'christoomey/vim-tmux-navigator'                            
Plug 'preservim/nerdcommenter'                                  
Plug 'christoomey/vim-system-copy'                                
Plug 'frazrepo/vim-rainbow'                                  
Plug 'lervag/vimtex'                                             
Plug 'airblade/vim-gitgutter'                                    
Plug 'editorconfig/editorconfig-vim'                             
Plug 'preservim/nerdcommenter'                                   
Plug 'junegunn/fzf'                                                
Plug 'junegunn/fzf.vim'                                         
Plug 'mattn/emmet-vim'                                            
Plug 'neomake/neomake'                                          
Plug 'scrooloose/nerdtree'                                        
Plug 'terryma/vim-multiple-cursors'                               
Plug 'tpope/vim-eunuch'                                         
Plug 'tpope/vim-surround'                                         
Plug 'lervag/vimtex'                                              
Plug 'francoiscabrol/ranger.vim'                                  
Plug 'ilyachur/cmake4vim'                                         
Plug 'easymotion/vim-easymotion'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'jez/vim-superman'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'harenome/vim-mipssyntax'
Plug 'unblevable/quick-scope'
Plug 'vim-test/vim-test'
Plug 'edkolev/tmuxline.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'szw/vim-maximizer'
Plug 'voldikss/vim-floaterm'
Plug 'ap/vim-css-color'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'ThePrimeagen/harpoon'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'yggdroot/indentline'
" Plug 'dense-analysis/ale'
" Plug 'itchyny/lightline.vim'
" Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'BrandonRoehl/auto-omni'
" Plug 'valloric/youcompleteme'
" Plug 'codota/tabnine-vim'
" Plug 'zxqfl/tabnine-vim'
" Plug 'glepnir/galaxyline.nvim'
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
call plug#end()


set hidden
 
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall
 
" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch



"-----------------------------------------------------------------------------------------"
"JK ycm first 2 and coc others
"-----------------------------------------------------------------------------------------"

let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<C-j>'
" let g:coc_snippet_next = '<c-j>'
" let g:coc_snippet_next = '<\C-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<C-k>'
" let g:coc_snippet_prev = '<c-k>'
" let g:coc_snippet_prev = '<\C-k>'
"
"TAB"

inoremap <silent><expr> <tab>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<tab>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
"

"Latex-------------------------------------------------------                       
let g:Tex_MultipleCompileFormats = 'pdf'                                                               
let g:Tex_DefaultTargetFormat = 'pdf'                                                                            
let g:tex_flavor='latex'                                                                                                  
let g:vimtex_view_method='zathura'                                                                                         
let g:vimtex_quickfix_mode=0                                                                                              
set conceallevel=1                                                                                                        
let g:tex_conceal='abdmg'                                                                                                
nnoremap <silent> <space>ll :wa <CR> :VimtexCompile<CR>

""let g:UltiSnipsSnippetDirectories=[“UltiSnips”, “UltiSnips”].vim/UltiSnips
""let g:UltiSnipsSnippetDirectories=[“UltiSnips”, “mycoolsnippets”]
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]
let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME.'/Documents/.a/snippets/']



""Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<C-tab>'
    let g:UltiSnipsJumpForwardTrigger = '<C-tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'

""Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

""Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none

" setlocal spell
" set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"------------------------------------------------------------    
"Indent line
" let g:indentLine_char       = '▏'
" let g:indentLine_setConceal = 0
let g:indent_guides_enable_on_vim_startup = 1

" colorscheme tir_black
" set ts=2 sw=2 et
" let g:indent_guides_start_level = 1
" let gindent_guides_guide_size = 2
" hi IndentGuidesOdd  guibg=red   ctermbg=3
" hi IndentGuidesEven guibg=green ctermbg=4
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"

"------------------------------------------------------------    
"key
nnoremap <space>x :wa<cr>
nnoremap <space>z :xa<cr>
nnoremap <leader>z :xa<cr>
nnoremap <space>q :wq<cr>
nnoremap <nowait><space>s :wa<cr>
nnoremap <space>0 :q!<cr>
imap <nowait><space> <space>
nnoremap - ,
nnoremap F t
nnoremap \ 0
vmap 1 0
nnoremap 0 $
vmap 0 $
nnoremap <)> <(>
vmap <)> <(>
nnoremap <(> <)>
vmap <(> <)>
nnoremap <C-)> <C-(>
vmap <C-)> <C-(>
nnoremap <C-(> <C-)>
vmap <C-(> <C-)>
" nnoremap <C-t> <Nop>
nnoremap <C-y> <Nop>
"there's a problem, it is slow"
" nnoremap <C-t> <C-d>
nnoremap <nowait><C-y> <C-d>
" nnoremap <C-y> <C-d>
"------------------------------------------------------------    
"------------------------------------------------------------    
"HardMode"
" autocmd VimEnter * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
"------------------------------------------------------------    
"------------------------------------------------------------    
nnoremap <space>\ :Startify <CR> 
"------------------------------------------------------------    
nnoremap <space>1 :w <CR> :!gcc -g % -o %< && ./%< <CR>
nnoremap <space>C :w <CR> :tabe term://gcc -g % -o %< && ./%< <CR>
nnoremap <space>P :wa <CR> :!python3 % <CR>
" map <space>J :wa <CR> :!javac % && java % <CR>
nnoremap <space>J :wa <CR> :!javac % && java %< <CR>
nnoremap <space>2 :wa <CR> :tabe term://javac % && java %< <CR>
map! <F4> :!./%< 
" map! <F5> :so ~/.vims/
" map <F5> :w <CR> :!gcc -g % -o %< <CR>
" map <space>co :w <CR> :!gcc -g % -o %< <CR>
map <F7> :w  <CR> :packadd termdebug <CR>
autocmd filetype c nnoremap <F6> :Termdebug %:r<CR><c-w>2j<c-w>L
" autocmd filetype c nnoremap <space>ma make  :e  %:r<CR><c-w>2j<c-w>L
" autocmd filetype c nnoremap <space>cd :packadd termdebug <CR> :Termdebug %:r<CR><c-w>2j<c-w>L
nnoremap <F2> :below vertical terminal <CR> 
nnoremap <space>T :NERDTreeToggle <CR> 
nnoremap <space>v :bn <CR>
nnoremap <leader>. :bn <CR>
" nnoremap <nowait><space>d :bd <CR>
nnoremap <nowait><space>X :bd <CR>
nnoremap <tab>  :BTags <CR>
nnoremap <space>y :Tagbar <CR>
nnoremap <C-Tab> gt
"------------------------------------------------------------                   
nnoremap <space>f :Files <CR>
nnoremap <space>j :Lines <CR>
nnoremap <space>k :BCommits <CR>
nnoremap <space>b :tabe <CR>
nnoremap <space>w :vsp <CR>
nnoremap <space>i :split <CR>
nnoremap <silent> <space>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <space>* :exe "resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <space>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <space>_ :exe "resize " . (winwidth(0) * 2/3)<CR>
""------------------------------------------------------------                   
nnoremap <space>G :! git add * <CR> ! git commit -m "%" <CR> ! git push <CR>
nnoremap <leader>B :Git Blame <CR>
nnoremap <leader>A :Git add . <CR>
nnoremap <leader>ci :Git commit <CR>
nnoremap <leader>pu :Git push <CR>
nnoremap <leader>e :!cat % <CR>
nnoremap <space>M :wa <CR> :! make <CR>
nnoremap <space>n :wa <CR> :! make <CR>
nnoremap <M-v> :! valgrind --leak-check=full --show-leak-kinds=all --log-file=Valgrind.txt ./%< <CR>
noremap <space>V :! valgrind --leak-check=full --show-leak-kinds=all --log-file=Valgrind.txt ./program <CR>
nnoremap <space>r :RangerNewTab <CR>
nnoremap <leader>n :noh <CR>
nnoremap <space>ò :noh <CR>
nnoremap <leader>s :set spell <CR>
nnoremap <space>S :mksession! .session.vim <CR>
nnoremap <space>O :so .session.vim <CR>
nnoremap <space>o :so% <CR>
"-----------------------------------------------------------------------------------------------------"
imap <M-b> public class First {<CR>public static void main(String[] args) {<CR>System.out.println("Hello OOP!");<CR>}<CR>} 
"Makefile---------------------------------------------------------------------------------------------"
noremap <M-m> :e %:h/Makefile<CR>
imap <M-j> compile:<CR>javac %.java && java %
noremap <M-g> :wa <CR> :!javac % && java %< <CR>
"------------------------------------------------------------                   
vmap <C-C> "+y                                                                                                         
"------------------------------------------------------------                   
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left> 
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
                                              
"tmux   
set background=dark   
set t_Co=256         
"                                                       
noremap <silent> <leader> :WhichKey '<Space>'<CR>
" noremap <silent> <leader> :WhichKey '<Space>'<CR>

highlight Cursor guifg=white guibg=black                                             
highlight iCursor guifg=white guibg=steelblue        

set cursorline
tnoremap <Esc> <C-\><C-n>:q!<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap <C-c> <C-\><C-n>:q!<CR>
tnoremap <C-c> <C-\><C-n>
"------------------------------------------------------------                   
"------------------------------------------------------------                   
"------------------------------------------------------------                   
"------------------------------------------------------------                   
"------------------------------------------------------------                   
let g:rainbow_active = 1                                                                                                
""set colorcolumn=80                                                                                                        
set textwidth=80                                                                                                          

""let g:indentLine_setColors = 0
""set IndentLinesDisable
                                                                                                                          
" map <Tab> <C-W>
set tabstop=2                                                                                   

"PLUGINS                                                                                         
" set rtp+=~/.vim/PLUGVIM/tabnine-vim
                                   
syntax enable                                                                                                                   
set background=dark                                                                                                            
colorscheme gruvbox                                                                                      
                                                                                                                              
set mouse=a                                                                                                       
set go+=a                                                                         
let g:system_copy#copy_command='xclip -sel clipboard'                                                               
                                                                                                 
" let g:airline_theme='gruvbox'
let g:airline_theme='apprentice'                                               
let g:airline_powerline_fonts = 0
" let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD
                                                                                                               
"TABLINE:                                                          

let g:airline_section_a = airline#section#create(['mode'])

                                                             
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline                             
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                            
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown) 
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown) 
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                 
let g:airline#extensions#tabline#show_tab_count = 1    " dont show tab numbers on the right         
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                           
let g:airline#extensions#tabline#tab_min_count = 1     " minimum of 2 tabs needed to display the tabline                      
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline 
let g:airline#extensions#tabline#show_tab_nr = 1       " disable tab numbers                                                     
let g:airline#extensions#tabline#show_tab_type = 1     " disables the weird ornage arrow on the tabline                        
let g:airline#extensions#hunks#enabled=0               " git
let g:airline_powerline_fonts = 1
" the separator used on the left side
let g:airline_left_sep=''
" the separator used on the right side 
let g:airline_right_sep=''

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.dirty='⚡'

" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.dirty='⚡'
                                                                                                                              
set laststatus=2                                                                                                     
                                                                                                                   
let NERDTreeShowHidden=1                                                                                                     

"nerd commenter                                                                                                           
"                                                                                                                                     
" Create default mappings                                                                                                     
let g:NERDCreateDefaultMappings = 1                                                                               
" Add spaces after comment delimiters by default                                                                              
let g:NERDSpaceDelims = 1                                                                           
" Use compact syntax for prettified multi-line comments                                                         
let g:NERDCompactSexyComs = 1                                                                                            
" Align line-wise comment delimiters flush left instead of following code indentation                                
let g:NERDDefaultAlign = 'left'                                                                         
" Set a language to use its alternate delimiters by default                                                           
let g:NERDAltDelims_java = 1                                                                
" Add your own custom formats or override the defaults                                                           
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }                                    
" Allow commenting and inverting empty lines (useful when commenting a region)                          
let g:NERDCommentEmptyLines = 1                                                                                 
" Enable trimming of trailing whitespace when uncommenting                                             
let g:NERDTrimTrailingWhitespace = 1                                                                  
" Enable NERDCommenterToggle to check all selected lines is commented or not                          
let g:NERDToggleCheckAllLines = 1                                                              
let mapleader=","                                                                                          
set timeout timeoutlen=1500                                                                                    

"--------------------------------------------------------------------------------------------"
"coc"
"
"
" " coc config
" let g:coc_global_extensions = [
"   \ 'coc-snippets',
"   \ 'coc-pairs',
"   \ 'coc-tsserver',
"   \ 'coc-eslint',
"   \ 'coc-prettier',
"   \ 'coc-json',
  " \ ]
"
"" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-j>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-k>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
"
" " Use <c-space> to trigger completion.
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif
"
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>aa  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>ee  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>cc  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>oo  :<C-u>CocList outline<cr>
" Search workspace symbols.
" nnoremap <silent><nowait> <space>ss  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" nnoremap <silent><nowait> <space>jj  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent><nowait> <space>kk  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>pp  :<C-u>CocListResume<CR>

nnoremap <nowait><space>e :CocCommand explorer<CR>
"-------------------------------------------------------------------------------------------------------------------"
let g:vimspector_enable_mappings = 'HUMAN'
" nnoremap <space>du :call vimspector#Launch()<CR>
nnoremap <F5> :call vimspector#Launch()<CR>
nnoremap <space>dx :VimspectorReset<CR>
nnoremap <space>de :VimspectorEval
nnoremap <space>dw :VimspectorWatch
nnoremap <space>do :VimspectorShowOutput
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-go', 'CodeLLDB' ]

" Debugger remaps
nnoremap <space>. :MaximizerToggle!<CR>
" nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <F8> <Plug>VimspectorStepInto
" nmap <leader>dj <Plug>VimspectorStepOver
nmap <F10> <Plug>VimspectorStepOver
" nmap <leader>dk <Plug>VimspectorStepOut
nmap <F12> <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
" nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <F9> <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint

" <Plug>VimspectorStop
" <Plug>VimspectorPause
" <Plug>VimspectorAddFunctionBreakpoint

"-----------------------------------------------------------------------------------------------------"
"
"Toggle terminal"
"-----------------------------------------------------------------------------------------------------"
let g:term_buf = 0
let g:term_win = 0

function! Term_toggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction


nnoremap <space>tt :call Term_toggle(10)<cr>
tnoremap <leader>tt <C-\><C-n>:call Term_toggle(10)<cr>
" tnoremap <space>r :bd!<cr>
" tnoremap <space>d :bd<cr>

" noremap <M-x> :wa <CR> :tabe term://make<CR>
noremap <space>m  :wa <CR> <C-\><C-n>:tabe term://make<CR>
nnoremap <silent> <leader>m :wa <CR> :LazyGit<CR>
nnoremap <silent> <space>g :wa <CR> :LazyGit<CR>

"-----------------------------------------------------------------------------------------------------"
"
"-----------------------------------------------------------------------------------------------------"
"Easy-motions"
"-----------------------------------------------------------------------------------------------------"
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
"-----------------------------------------------------------------------------------------------------"
"unzip jar
au BufReadCmd *.jar call zip#Browse(expand("<amatch>"))
"-----------------------------------------------------------------------------------------------------"
"
"-----------------------------------------------------------------------------------------------------"
"floaterm
"-----------------------------------------------------------------------------------------------------"
let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<space>tr'
let g:floaterm_keymap_prev   = '<space>t3'
let g:floaterm_keymap_new    = '<space>t4'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.95
let g:floaterm_height=0.95
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

" let g:which_key_map.t = {
      " \ 'name' : '+terminal' ,
      " \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
      " \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      " \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      " \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      " \ 'n' : [':FloatermNew node'                              , 'node'],
      " \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
      " \ 'p' : [':FloatermNew python'                            , 'python'],
      " \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      " \ 't' : [':FloatermToggle'                                , 'toggle'],
      " \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      " \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      " \ }
"-----------------------------------------------------------------------------------------------------"
"
"-----------------------------------------------------------------------------------------------------"
"test
"-----------------------------------------------------------------------------------------------------"
"Java
let test#java#runner = 'gradletest'
command! -nargs=* -bar IntegrationTest call test#run('integration', split(<q-args>))
nnoremap <silent><leader>itf :IntegrationTest -Dtest=foo -DfailIfNoTests=false -am -Dpmd.skip=true -Dcheckstyle.skip=true<CR>
"-----------------------------------------------------------------------------------------------------"
