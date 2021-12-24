call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-endwise'
Plug 'preservim/nerdtree'
Plug 'ervandew/supertab'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'github/copilot.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

call plug#end()

filetype plugin indent on


" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","

syntax on
set number 
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set encoding=UTF-8
set list listchars=tab:\ \ ,trail:·
set background=dark

colorscheme gruvbox


" ================ Custom Settings ========================

" Window pane resizing
nnoremap <silent> <Leader>[ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>] :exe "resize " . (winheight(0) * 2/3)<CR>

" ===== Seeing Is Believing =====
" " Assumes you have a Ruby with SiB available in the PATH
" " If it doesn't work, you may need to `gem install seeing_is_believing -v
" 3.0.0.beta.6`
" " ...yeah, current release is a beta, which won't auto-install
"
" " Annotate every line
"
nmap <leader>b :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>;
"
"  " Annotate marked lines
"
nmap <leader>n :%.!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk --xmpfilter-style<CR>;
"
"  " Remove annotations
"
nmap <leader>c :%.!seeing_is_believing --clean<CR>;
"
"  " Mark the current line for annotation
"
nnoremap <leader>m A # => <Esc>
"
"  " Mark the highlighted lines for annotation
"
vnoremap <leader>m :norm A # => <Esc>


" Show hidden files in NERDtree
" let NERDTreeShowHidden=1
" let NERDTreeQuitOnOpen = 0
noremap <C-b> :RangerCurrentDirectory<CR>
" 
" " For mouse click in NERDTree
" :set mouse=a
" let g:NERDTreeMouseMode=3
" 
" Custom Keymappings
nnoremap <C-p> :GFiles<CR>
