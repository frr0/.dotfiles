" >> load plugins
call plug#begin(stdpath('data') . 'vimplug')
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'hrsh7th/nvim-compe'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'

    Plug 'glepnir/galaxyline.nvim', { 'branch': 'main' }
    Plug 'kyazdani42/nvim-web-devicons'  " needed for galaxyline icons

    Plug 'NLKNguyen/papercolor-theme'
    Plug 'nikvdp/neomux'

    Plug 'tpope/vim-ragtag'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'

    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-fugitive'

    Plug 'tomtom/tcomment_vim'

    Plug 'mhinz/vim-startify'
    Plug 'lervag/vimtex'
    Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
    Plug 'puremourning/vimspector'
    Plug 'liuchengxu/vim-which-key'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'scrooloose/nerdcommenter'                                  
    Plug 'preservim/nerdcommenter'
    Plug 'frazrepo/vim-rainbow'
    Plug 'shime/vim-livedown'
    Plug 'christoomey/vim-tmux-navigator'

call plug#end()



colorscheme onedark

" basic settings
syntax on
set number
set relativenumber
set ignorecase      " ignore case
set smartcase     " but don't ignore it, when search string contains uppercase letters
set nocompatible
set incsearch        " do incremental searching
set visualbell
set expandtab
set tabstop=2
set ruler
set smartindent
set shiftwidth=4
set hlsearch
set virtualedit=all
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent
set mouse=a  " mouse support

"key
nnoremap <space>x :wa<cr>
nnoremap <space>z :xa<cr>
nnoremap ,z :xa<cr>
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
nnoremap <C-y> <Nop>
nnoremap <nowait><C-y> <C-d>
"------------------------------------------------------------    
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
"------------------------------------------------------------    
nnoremap <space>\ :Startify <CR> 
"------------------------------------------------------------    
nnoremap <space>1 :w <CR> :!gcc -g % -o %< && ./%< <CR>
nnoremap <space>C :w <CR> :tabe term://gcc -g % -o %< && ./%< <CR>
nnoremap <space>P :wa <CR> :!python3 % <CR>
nnoremap <space>J :wa <CR> :!javac % && java %< <CR>
nnoremap <space>2 :wa <CR> :tabe term://javac % && java %< <CR>
map! <F4> :!./%< 
map <F7> :w  <CR> :packadd termdebug <CR>
autocmd filetype c nnoremap <F6> :Termdebug %:r<CR><c-w>2j<c-w>L
nnoremap <F2> :below vertical terminal <CR> 
nnoremap <space>T :NERDTreeToggle <CR> 
nnoremap <space>v :bn <CR>
nnoremap <leader>. :bn <CR>
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
noremap <silent> <space> :WhichKey '<Space>'<CR>

highlight Cursor guifg=white guibg=black                                             
highlight iCursor guifg=white guibg=steelblue        

set cursorline
tnoremap <Esc> <C-\><C-n>:q!<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap <C-c> <C-\><C-n>:q!<CR>
tnoremap <C-c> <C-\><C-n>

" set leader key to ,
let g:mapleader=","

" >> Telescope bindings
nnoremap <space>pp <cmd>lua require'telescope.builtin'.builtin{}<CR>

" most recently used files
nnoremap <space>m <cmd>lua require'telescope.builtin'.oldfiles{}<CR>

" find buffer
nnoremap ; <cmd>lua require'telescope.builtin'.buffers{}<CR>

" find in current buffer
nnoremap <space>/ <cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>

" bookmarks
nnoremap <space>' <cmd>lua require'telescope.builtin'.marks{}<CR>

" git files
nnoremap <space>f <cmd>lua require'telescope.builtin'.git_files{}<CR>

" all files
nnoremap <space>bfs <cmd>lua require'telescope.builtin'.find_files{}<CR>

" ripgrep like grep through dir
nnoremap <space>rg <cmd>lua require'telescope.builtin'.live_grep{}<CR>

" pick color scheme
nnoremap <space>cs <cmd>lua require'telescope.builtin'.colorscheme{}<CR>


" >> setup nerdcomment key bindings
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1

xnoremap <Leader>cc <cmd>call NERDComment('n', 'toggle')<CR>
nnoremap <Leader>cu <cmd>call NERDComment('n', 'toggle')<CR>


" >> Lsp key bindings
nnoremap <silent><space> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent><space> <C-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent><space>gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent><space> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent><space> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent><space> K     <cmd>Lspsaga hover_doc<CR>
nnoremap <silent><space> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent><space> <C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent><space> <C-n> <cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent><space> gf    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent><space> gn    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent><space> ga    <cmd>Lspsaga code_action<CR>
xnoremap <silent><space> ga    <cmd>Lspsaga range_code_action<CR>
nnoremap <silent><space> gs    <cmd>Lspsaga signature_help<CR>

" Find files using Telescope command-line sugar.
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
" nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
" nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

"Vimspector
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

noremap <space>m  :wa <CR> <C-\><C-n>:tabe term://make<CR>
nnoremap <silent> <space>g :wa <CR> :LazyGit<CR>
noremap <silent> <space> :WhichKey '<Space>'<CR>
noremap <silent> <leader> :WhichKey ','<CR>
noremap <silent> g :WhichKey 'g'<CR>

"markdown
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0

" should the browser window pop-up upon previewing
let g:livedown_open = 1

" the port on which Livedown server will run
let g:livedown_port = 1337

" the browser to use, can also be firefox, chrome or other, depending on your executable
let g:livedown_browser = "firefox"

""Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

lua <<EOF
require("lsp")
require("treesitter")
require("statusbar")
require("completion")
EOF
