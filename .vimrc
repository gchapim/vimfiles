set nocompatible              " be iMproved, required
set number
set shell=bash
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
call pathogen#infect()

" Set SPELLCHeCK YYAH
set spell spelllang=en_ca
" hi SpellBad cterm=underline,bold
"set highlight SpellBad      ctermfg=Red         term=Reverse        guisp=Red       gui=undercurl   ctermbg=White

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" set ctrlP plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
" allow vim to jump through directories for ctags
set tags=tags;/
syntax enable
let g:solarized_termcolors = 16
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Scala highlights
Plugin 'derekwyatt/vim-scala'
" neocomplete Plugin
Plugin 'Shougo/neocomplete.vim'
" show git diif in vim
Plugin 'airblade/vim-gitgutter'
" plugin from http://vim-scripts.org/vim/scripts.html
" Install L9 and avoid a Naming conflict if you've already
" installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
" Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Files stucture tree
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <leader>. :CtrlPTag<cr>

Plugin 'whatyouhide/vim-gotham'
colorscheme gotham

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'scrooloose/syntastic'

Plugin 'neomake/neomake'

Plugin 'elixir-editors/vim-elixir'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

call vundle#end()            " required

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
" Move up and down in autocomplete with <c-j> and <c-k>
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

let g:ruby_indent_access_modifier_style = 'normal'
let g:ruby_indent_assignment_style = 'variable'
let g:ruby_indent_block_style = 'do'

nnoremap ; :
set noswapfile

let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_enable_elixir_checker = 1
let g:syntastic_elixir_checkers = ['elixir']
set clipboard=unnamedplus

let g:neomake_elixir_enabled_makers = ['credo']
autocmd! BufWritePost * Neomake
