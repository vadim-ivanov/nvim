set mouse =a  " enable mouse
set encoding=utf-8
set number
set noswapfile
set scrolloff=7
set backspace=indent,eol,start

syntax enable

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

let mapleader = ' '

filetype indent on      " load filetype-specific indent files

" for tabulation
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2

inoremap jk <esc>

"mappings
let NERDTREEQuitOnOpen=1
map <C-n> :NERDTreeToggle<CR>

call plug#begin ()

"colorscheme
Plug 'morhetz/gruvbox'

" NerdTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Colorizer
Plug 'norcalli/nvim-colorizer.lua'

" UltiSnippet
Plug 'sirver/ultisnips'

"Icons
Plug 'ryanoasis/vim-devicons'

"Airline
Plug 'vim-airline/vim-airline'

" Autopairs
Plug 'jiangmiao/auto-pairs'

" NerdCommenter
Plug 'preservim/nerdcommenter'

" Autocomplete
Plug 'davidhalter/jedi-vim'

"Linter
Plug 'dense-analysis/ale'

call plug#end()

colorscheme gruvbox
let g:airline_theme='gruvbox'

if (has("termguicolors"))
  set termguicolors
endif

lua require 'colorizer'.setup()

"NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

"Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>

"Ultisnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/ultisnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
