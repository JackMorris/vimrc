set nocompatible
filetype off
set modelines=0 " Security exploits!

" ~~~~~~~~~~~~~~~~
" ~~~ PLUGINGS ~~~
" ~~~~~~~~~~~~~~~~
"
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Put Vundle plugins here (before `call vundle#end()`)

Plugin 'VundleVim/Vundle.vim'
    " Active Vundle itself

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
    " For navigation
    " NerdTree - <leader>n
    "            Navigate the file tree
    " CtrlP -    <leader>pf = files, <leader>pb = buffers, <leader>pm = mixed
    "            Fuzzy navigator for a variety of things

Plugin 'plasticboy/vim-markdown'
Plugin 'fatih/vim-go'
    " Language Support

Plugin 'altercation/vim-colors-solarized'
    " To get Solarized to work (incl TMUX support)
    " Select solarized colour scheme in xterm
    " `export TERM=xterm-256color` in .zshrc
    " `set -g default-terminal "screen-256color"` in .tmux.conf

Plugin 'elzr/vim-json'
    " JSON highlighting - we disable hiding double quotes
    " since it's jarring to navigate through. This is done
    " below.

" VUNDLE HELP
"
" :PluginList       - List plugins
" :PluginInstall    - Install plugins
" :PluginUpdate     - Update plugins
" :PluginSearch foo - Search for plugin foo
" :PluginClean      - Confirms removal of unused plugins

call vundle#end()
filetype plugin indent on

" ~~~~~~~~~~~~~~~~~~~
" ~~~ END PLUGINS ~~~
" ~~~~~~~~~~~~~~~~~~~

" Appearance
set number
syntax on
set background=dark
set colorcolumn=80,100
colorscheme solarized

" Editing Settings
set mouse=a
set backspace=indent,eol,start
set clipboard=unnamed

" Search Settings
set hlsearch
set ignorecase

" Code Format
set encoding=utf-8
set autoindent
let html_no_rendering=1 " Prevent underlines in html files

" Tabbing
set tabstop=4 softtabstop=4 shiftwidth=4 " 4 spaces for tab.
set expandtab

" Stab command lets you set all tab values at once
command! -nargs=* Stab call Stab()
function! Stab()
    let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
    if l:tabstop > 0
        let &l:sts = l:tabstop
        let &l:ts = l:tabstop
        let &l:sw = l:tabstop
    endif
endfunction

" Some shortcuts
let mapleader=","
nnoremap <leader><space> :noh<cr>
noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>pf :CtrlP<cr>
noremap <leader>pb :CtrlPBuffer<cr>
noremap <leader>pm :CtrlPMixed<cr>
noremap <leader>v <C-w>v<C-w>l
noremap <leader>h <C-w>s<C-w>l

" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeQuitOnOpen=1

" JSON
let g:vim_json_syntax_conceal=0

" Sane split handling
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
set splitbelow
set splitright

" Sane pasting
" p now pastes with correct indentation - ctrl-P for previous behaviour
nnoremap p ]p       
nnoremap <c-p> p

" Markdown
let g:vim_markdown_folding_disabled=1 " Disable markdown folding

" Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_autosave = 0
let g:go_fmt_command = "goimports"
