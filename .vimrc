execute pathogen#infect()
"set t_Co=256
set background=dark
colorscheme blazer 
highlight Normal ctermbg=None
"   :
set runtimepath^=~/.vim/bundle/ctrlp.vim
highlight ExtraWhitespace ctermbg=red guibg=red
" The following alternative may be less obtrusive.
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
" Try the following if your GUI uses a dark background.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab
set paste
set number

set autoindent
set cindent


" Send more characters for redraws
set ttyfast
"
" " Enable mouse use in all modes
set mouse=a

" " Set this to the name of your terminal that supports mouse codes.
" " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
" set ttymouse=xterm

" NERDtree
map <C-n> :NERDTreeToggle<CR>

set colorcolumn=80
hi ColorColumn guibg=#2d2d2d ctermbg=246

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set ttimeoutlen=50
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
