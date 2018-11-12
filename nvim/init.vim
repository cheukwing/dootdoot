call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'godlygeek/tabular'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sbdchd/neoformat'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'hdima/python-syntax'
call plug#end()

colorscheme molokai
set background=dark

let g:deoplete#enable_at_startup=1

let g:airline_powerline_fonts=1
let g:airline_theme='molokai'

let g:neoformat_try_formatprg=1
augroup NeoformatAutoFormat
    autocmd!
    autocmd FileType javascript,javascript.jsx setlocal formatprg=prettier\
                                                            \--stdin\
                                                            \--print-width\ 80\
                                                            \--single-quote\
                                                            \--trailing-comma\ es5
    autocmd BufWritePre *.js,*.jsx Neoformat
augroup END

let python_highlight_all = 1

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


nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l
nmap <C-Up> <C-W><Up>
nmap <C-Left> <C-W><Left>
nmap <C-Down> <C-W><Down>
nmap <C-Right> <C-W><Right>

set wmh=0
set wmw=0

set mouse=a

set clipboard=unnamedplus
