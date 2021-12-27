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
Plug 'kevinhwang91/rnvimr'
Plug 'dhruvasagar/vim-zoom'
Plug 'christoomey/vim-tmux-navigator'
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
set hlsearch
set incsearch
set ignorecase
set ruler
set showcmd
set showmatch
set showmode

colorscheme gruvbox


" ================ Custom Settings ========================

" Window pane resizing
nnoremap <silent> <Leader>[ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>] :exe "resize " . (winheight(0) * 2/3)<CR>
" Show hidden files in NERDtree
" let NERDTreeShowHidden=1
" let NERDTreeQuitOnOpen = 0
" noremap <C-b> :RangerCurrentDirectory<CR>
noremap <C-b> :RnvimrToggle<CR>
" 
" " For mouse click in NERDTree
" :set mouse=a
" let g:NERDTreeMouseMode=3
" 
" Custom Keymappings
nnoremap <C-p> :GFiles<CR>

let g:tmux_navigator_no_mappings = 1

" nnoremap <silent> <a-h> :TmuxNavigateLeft<cr>
" nnoremap <silent> <a-j> :TmuxNavigateDown<cr>
" nnoremap <silent> <a-k> :TmuxNavigateUp<cr>
" nnoremap <silent> <a-l> :TmuxNavigateRight<cr>
" nnoremap <silent> <a-\> :TmuxNavigatePrevious<cr>



let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-b': 'vsplit',
  \ 'ctrl-v': 'split',
  \ 'ctrl-y': {lines -> setreg('*', join(lines, "\n"))}}

" Map a few common things to do with FZF.
nnoremap <silent> <S-Tab> :Buffers<CR>

" Move 1 more lines up or down in normal and visual selection modes.
nnoremap <a-k> :m .-2<CR>==
vnoremap <a-k> :m '<-2<CR>gv=gv
nnoremap <a-j> :m .+1<CR>==
vnoremap <a-j> :m '>+1<CR>gv=gv
nnoremap <a-Up> :m .-2<CR>==
vnoremap <a-Up> :m '<-2<CR>gv=gv
nnoremap <a-Down> :m .+1<CR>==
vnoremap <a-Down> :m '>+1<CR>gv=gv


" Select same word with <C-d>
nnoremap <C-d> <C-n>

" Customize fzf colors to match your color scheme.
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

map <c-d> <c-n>
