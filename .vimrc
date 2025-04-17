set number
set hlsearch
set wrap 
set laststatus=2
set incsearch
set tabstop=4
set shortmess-=S

colorscheme habamax

syntax on

" remaps nerdtree toggle to control + p
noremap <C-p> <Esc>:NERDTreeToggle<CR>

" remaps moving left/right/up/down to ctrl + h/j/k/l
noremap <C-h> <Esc><C-w>h
noremap <C-j> <Esc><C-w>j
noremap <C-k> <Esc><C-w>k
noremap <C-l> <Esc><C-w>l

" remaps file search to ctrl + u
noremap <C-u> <Esc>:FZF<cr>
" remaps word search to ctrl + y
noremap <C-y> <Esc>:Rg<cr>

" remaps ctrl + c/v to copy/paste
noremap <C-c> "*y
noremap <C-v> "*p

" remaps regular word search in file to be case insensitive
nnoremap / /\c

" Copies text to VIM clipboard and system clipboard
xnoremap y "*y

" default adding pairs for {,(,[,",' (only do these in insert mode)
inoremap { {}<Esc>:startinsert<cr>
inoremap ( ()<Esc>:startinsert<cr>
inoremap [ []<Esc>:startinsert<cr>
inoremap " ""<Esc>:startinsert<cr>
inoremap ' ''<Esc>:startinsert<cr>

" installed vim-plug from this github intructions: https://github.com/junegunn/vim-plug
" Make sure to run the first time :PlugInstall to install these plugins
call plug#begin()
	" fuzzy finder for vim 
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	" nerdtree
	Plug 'preservim/nerdtree'
call plug#end()

