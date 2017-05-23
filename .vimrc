set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Identline
Plugin 'Yggdroot/indentLine'
Plugin 'python-mode/python-mode'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Rip-Rip/clang_complete'
Plugin 'junegunn/goyo.vim'
Plugin 'jiangmiao/auto-pairs'
" Color plugins
Plugin 'roosta/vim-srcery'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'rakr/vim-one'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" START FROM HERE

" PYMODE
let g:pymode_rope_completion=1
let g:pymode_rope_completion_on_dor=1
let g:pymode_rope_completion_bind = '<C-n>'
let g:pymode_rope_autoimport = 0
let g:pymode_rope_goto_definition_bind = "<C-]>"
set completeopt=menu
let g:airline#extensions#tabline#enabled = 1
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
map <C-n> :NERDTreeToggle<CR>

" COLORS
if has('gui_running')
    " GUI colors
    set lines=999 columns=999
    set guifont=Inconsolata\ 12
    set guioptions-=T
    set guioptions-=r
    set background=dark
    colorscheme base16-default-dark
    " let ayucolor="dark"
else
    " Non-GUI (terminal) colors
    colorscheme base16-default-dark
endif
" let airline_theme='base16'
" let airline_theme='dracula'
let airline_theme='base16'
set expandtab
set nu
syntax on
filetype on
set laststatus=2
set hlsearch
set backspace=indent,eol,start
set colorcolumn=80

" BETTERWHITESPACE
highlight ExtraWhitespace ctermbg=green

set nofoldenable
" SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

" OMNI
set omnifunc=syntaxcomplete#Complete

" CTAGS
map <f12>ctags -R .<cr>

" TABS
:nnoremap <C-S-t> :tabnew<CR>
:inoremap <C-S-t> <Esc>:tabnew<CR>
:inoremap <C-S-w> <Esc>:tabclose<CR>

" CLANG_COMPLETE
let g:clang_library_path='/usr/lib64/libclang.so.3.9'
