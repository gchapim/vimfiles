call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'whatyouhide/vim-gotham'

Plug 'vim-airline/vim-airline'

Plug 'https://github.com/neomake/neomake'

Plug 'vim-airline/vim-airline-themes'

Plug 'kien/ctrlp.vim'

Plug 'ascenator/L9', {'name': 'newL9'}

Plug 'vim-ruby/vim-ruby'

Plug 'tpope/vim-rails'

Plug 'MarcWeber/vim-addon-mw-utils'

Plug 'tomtom/tlib_vim'

Plug 'garbas/vim-snipmate'

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/syntastic'

Plug 'elixir-editors/vim-elixir'

Plug 'tpope/vim-commentary'
" Initialize plugin system
call plug#end()

nnoremap <S-Down> :m .+1<CR>==
nnoremap <S-Up> :m .-2<CR>==
inoremap <S-Down> <Esc>:m .+1<CR>==gi
inoremap <S-Up> <Esc>:m .-2<CR>==gi
vnoremap <S-Down> :m '>+1<CR>gv=gv
vnoremap <S-Up> :m '<-2<CR>gv=gv

set nocompatible              " be iMproved, required
set number
set shell=zsh
syntax on 
filetype plugin indent on
filetype on
filetype indent on
filetype plugin on
set clipboard=unnamed
set backspace=indent,eol,start
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

let loaded_netrwPlugin = 1
" remap splitting windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" remap splits
nmap :vs :vsplit
nmap :s :split
" nnoremap <C-a> <C-w>
"Pathogen
set nocp

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <leader>. :CtrlPTag<cr>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ruby_indent_access_modifier_style = 'normal'
let g:ruby_indent_assignment_style = 'variable'
let g:ruby_indent_block_style = 'do'

nnoremap ; :
set noswapfile

colorscheme gotham

map <C-n> :NERDTreeToggle<CR>

let g:syntastic_enable_elixir_checker = 1
let g:syntastic_elixir_checkers = ['elixir']
set clipboard=unnamedplus

let g:neomake_elixir_enabled_makers = ['credo']
autocmd! BufWritePost * Neomake

" CtrlP + The Silver Searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ag_working_path_mode="r"
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
