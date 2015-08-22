
" Vundle specifications
 set nocompatible              " be iMproved, required
filetype off                  " required

" Powerline 
" set rtp+=/home/phil/bin/powerline/powerline/bindings/vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'kien/ctrlp.vim' "Full path fuzzy {file, buffer, mru, tag" finder
" Plugin 'davidhalter/jedi-vim' "Python autocompletion
"Plugin 'nvie/vim-flake8' "Syntax and style checker for Python.
Plugin 'altercation/vim-colors-solarized'  "Nice color scheme
Plugin 'tpope/vim-repeat' "Required for vim-easyclip
Plugin 'svermeulen/vim-easyclip' "Improved cut/copy/paste functions
Plugin 'christoomey/vim-tmux-navigator' "Improved tmux/vim navigation
" Plugin 'Valloric/YouCompleteMe' "Code-completion engine
Plugin 'scrooloose/syntastic' "Syntax checking 
Plugin 'scrooloose/nerdtree' "Tree explorer 
" Plugin 'bling/vim-airline' " lightweight powerline status bar for vim

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Set powerline status line to always be on
set laststatus=2

" Remap split pane navigation
nnoremap <C-J> <C-W><C-J> "Ctrl-j to move down a split  
nnoremap <C-K> <C-W><C-K> "Ctrl-k to move up a split  
nnoremap <C-L> <C-W><C-L> "Ctrl-l to move    right a split  
nnoremap <C-H> <C-W><C-H> "Ctrl-h to move left a split 


" Call Flake8 (python PEP and syntax checker) check every time you write to a
" Python file
" autocmd BufWritePost *.py call Flake8()

" Source vim-ipython plugin
" source ~/.vim/ftplugin/python/ipy.vim

" Load Pathogen for managing vim plugins.
" execute pathogen#infect()

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

" Solarized color scheme
syntax enable
set t_Co=256
set background=dark
let g:solarized_termcolors=16
colorscheme solarized

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Useful settings
set number  " show line numbers
set history=700
set undolevels=700

" set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again

