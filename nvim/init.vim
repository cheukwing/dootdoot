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
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'elixir-lang/vim-elixir'
Plug 'elmcast/elm-vim'
call plug#end()

syntax enable

colorscheme molokai
set background=dark

let g:deoplete#enable_at_startup=1

let g:airline_powerline_fonts=1
let g:airline_theme='molokai'

let g:elm_format_autosave = 1

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

let g:deoplete#sources#go#gocode_binary = '/home/cheukwing/go/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

let g:tex_conceal = ""


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
