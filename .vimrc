call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'whatyouhide/vim-gotham'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'kien/ctrlp.vim'

Plug 'ascenator/L9', {'name': 'newL9'}

Plug 'vim-ruby/vim-ruby'

Plug 'tpope/vim-rails'

Plug 'MarcWeber/vim-addon-mw-utils'

Plug 'tomtom/tlib_vim'

Plug 'garbas/vim-snipmate'

Plug 'tpope/vim-fugitive'

Plug 'elixir-editors/vim-elixir'

Plug 'tpope/vim-commentary'

Plug 'dense-analysis/ale'

Plug 'mhinz/vim-mix-format'

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
set backspace=indent,eol,start
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

let loaded_netrwPlugin = 1
nmap :vs :vsplit
nmap :s :split
" nnoremap <C-a> <C-w>
set nocp

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <leader>. :CtrlPTag<cr>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ruby_indent_access_modifier_style = 'normal'
let g:ruby_indent_assignment_style = 'variable'
let g:ruby_indent_block_style = 'do'

" Set specific linters
let g:ale_linters = {
\   'elixir': ['elixir-ls', 'credo', 'dialyzer'],
\}

let g:airline#extensions#ale#enabled = 1
let g:ale_completion_enabled = 1
" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

let g:mix_format_on_save = 1
let g:mix_format_silent_errors = 1

noremap <Leader>ad :ALEGoToDefinition<CR>
nnoremap <leader>af :ALEFix<cr>
noremap <Leader>ar :ALEFindReferences<CR>
"Move between linting errors
nnoremap ]r :ALENextWrap<CR>
nnoremap [r :ALEPreviousWrap<CR>

nnoremap ; :
set noswapfile

colorscheme gotham

map <C-n> :NERDTreeToggle<CR>

set clipboard=unnamedplus

setlocal formatprg=mix\ format\ -

" CtrlP + The Silver Searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ag_working_path_mode="r"
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
