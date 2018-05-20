call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'godlygeek/tabular'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sbdchd/neoformat'
call plug#end()

colorscheme molokai
set background=dark

let g:deoplete#enable_at_startup=1
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'

let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_auto_colors=0 
let g:indent_guides_guide_size=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

set number
set relativenumber

set smartcase
set ignorecase

set tabstop=2
set shiftwidth=2
set expandtab

set autoindent

nmap <F8> :tabn<CR>
nmap <F7> :tabp<CR>

set mouse=a
