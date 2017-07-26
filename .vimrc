set nocompatible              " be iMproved, required
filetype off                  " required
:set shell=/bin/zsh


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" core plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-abolish'
Plugin 'vim-ruby/vim-ruby'
Plugin 'rbgrouleff/bclose.vim'

Plugin 'scrooloose/syntastic'

Plugin 'tmhedberg/SimpylFold'
Plugin 'mhinz/vim-signify'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'janko-m/vim-test'

Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'digitaltoad/vim-pug'

"Plugin 'plasticboy/vim-markdown'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tcomment_vim'
Plugin 'machakann/vim-textobj-delimited'
Plugin 'rizzatti/dash.vim'
Plugin 'gorkunov/smartpairs.vim'

Plugin 'othree/html5.vim'

Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'mxw/vim-jsx'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'ervandew/supertab'

Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'tpope/vim-obsession'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

"Markdownplugin
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

"Plugin for handlebars
Plugin 'mustache/vim-mustache-handlebars'


"Emmet Plugin 
Plugin 'mattn/emmet-vim'

Plugin 'SirVer/ultisnips'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'

" Colour Themes
Plugin 'joshdick/onedark.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'GertjanReynaert/cobalt2-vim-theme'

call vundle#end()            " required

filetype plugin indent on    " required



" =============================================================
"                 PLUGINS CONFIGURATION
" =============================================================

" NERDTree
map <C-b> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeShowLineNumbers=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Easymotion
nmap s <Plug>(easymotion-s)
omap s <Plug>(easymotion-bd-t)
vmap s <Plug>(easymotion-bd-t)

"Emmet Plugin 
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-X>'

" Airline
let g:airline#extensions#tabline#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
:set linespace=1

set guifont=DejaVu\ Sans:s12

set ttimeoutlen=50

set laststatus=2
set t_Co=256
set encoding=utf-8

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 1
let airline#extensions#tabline#ignore_bufadd_pat ='\c\vgundo|undotree|vimfiler|tagbar|nerd_tree'
let airline#extensions#tabline#disable_refresh = 0

nnoremap <silent> <C-Right> :bn<CR>
nnoremap <silent> <C-Left> :bp<CR>

" Markdown
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml']

" CtrlP
let g:ctrlp_working_path_mode='a'
set wildignore+=**/bower_components/*,**/node_modules/*,**/tmp/*,**/assets/images/*,**/assets/fonts/*,**/public/images/*

" JSX
let g:jsx_ext_required = 0
let g:javascript_enable_domhtmlcss = 1
let g:used_javascript_libs = 'underscore,react,chai'



"Syntastic Plugins
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_loc_list_height = 3
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:pymode_lint_on_write = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

"Handlebar Plugins
let g:mustache_abbreviations = 1

let python_highlight_all=1
syntax on

set clipboard=unnamed
set nu

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
:set tabstop=4
:set shiftwidth=4
:set expandtab
