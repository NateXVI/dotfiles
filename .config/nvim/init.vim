" Set Space as the leader key
let mapleader = " "
let maplocalleader = " "

" Basic settings for a better editing experience
set number          " Show line numbers
set relativenumber  " Show relative line numbers
set noswapfile      " Don't use swapfile
set hidden          " Allow switching buffers without saving
set cursorline      " Highlight the current line
set expandtab       " Use spaces instead of tabs
set tabstop=4       " 1 tab == 4 spaces
set shiftwidth=4    " Shift 4 spaces when tab
set softtabstop=4   " Soft tab stop
set smartindent     " Enable smart indent
set nowrap          " Disable wrapping

" Better search
set incsearch       " Incremental search
set hlsearch        " Highlight search results
set ignorecase      " Ignore case in search
set smartcase       " Override ignorecase if search contains uppercase

" Key mappings that complement tmux setup
nnoremap <leader>w :w<CR>             " Quick save
nnoremap <leader>q :q<CR>             " Quick quit
nnoremap <leader>x :bdelete<CR>       " Close buffer
nnoremap <leader>v :vsplit<CR>        " Vertical split
nnoremap <leader>h :split<CR>         " Horizontal split

" Navigation between splits using leader key
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Resize splits with leader key (remember, tmux uses Shift+HJKL for resizing)
nnoremap <leader><left> :vertical resize -2<CR>
nnoremap <leader><down> :resize +2<CR>
nnoremap <leader><up> :resize -2<CR>
nnoremap <leader><right> :vertical resize +2<CR>

" Plugin management, customization, or additional functionality can go here
" For example, using vim-plug to manage plugins:
" call plug#begin('~/.vim/plugged')
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" call plug#end()

