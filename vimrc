set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Put Vundle plugins here (before `call vundle#end()`)
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'fatih/vim-go'

" VUNDLE HELP
"
" :PluginList       - List plugins
" :PluginInstall    - Install plugins
" :PluginUpdate     - Update plugins
" :PluginSearch foo - Search for plugin foo
" :PluginClean      - Confirms removal of unused plugins
"
call vundle#end()
filetype plugin indent on

" Appearance
set number
syntax on
let g:vim_markdown_folding_disabled=1 " Disable markdown folding

" Editing Settings
set ignorecase

" Code Format
set encoding=utf-8
set tabstop=4 shiftwidth=4 expandtab " Use 4 spaces for tab
let html_no_rendering=1 " Prevent underlines in html files

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_autosave = 0
