set nocompatible

set encoding=utf-8

" backspacing over everything in insert mode
set backspace=indent,eol,start

set history=50
set ruler
set showcmd
set cursorline
set incsearch
set rnu
set number

set autoread

nnoremap j gj
nnoremap k gk

" Q for formatting
map Q gq

" enable mouse
if has('mouse')
    set mouse=a
endif

syntax on

" vim-plug


call plug#begin('~/.vim/bundle')

Plug 'gmarik/Vundle.vim'

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"
let g:airline_powerline_fonts = 1

"" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
"
"" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

Plug 'Valloric/YouCompleteMe'

Plug 'terryma/vim-multiple-cursors'

Plug 'ntpeters/vim-better-whitespace'

Plug 'Raimondi/delimitMate'

Plug 'tpope/vim-surround'

Plug 'sheerun/vim-polyglot'

Plug 'rhysd/vim-grammarous'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'Yggdroot/indentLine'
let g:indentLine_char = '¦'
let g:indentLine_faster = 1
let g:indentLine_enabled = 0

" themes
Plug 'altercation/vim-colors-solarized'
Plug 'sjl/badwolf'
Plug 'chriskempson/base16-vim'
Plug 'wimstefan/Lightning'
Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'
Plug 'romainl/Apprentice'
Plug 'tomasr/molokai'
Plug 'chriskempson/tomorrow-theme'

call plug#end()


let g:html_indent_inctags = "html,body,head,tbody"
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let g:tex_flavor = "latex"

autocmd FileType text setlocal textwidth=78

set expandtab
set shiftround
set shiftwidth=4
set softtabstop=4

autocmd FileType r setlocal shiftwidth=2 softtabstop=2

autocmd FileType markdown setlocal wrap linebreak nolist textwidth=0 formatoptions+=tnl tabstop=4

autocmd FileType c,cpp setlocal cindent
autocmd FileType python setlocal tabstop=8
autocmd FileType javascript,html,css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType haskell setlocal tabstop=8 smarttab shiftround nojoinspaces
autocmd FileType tex,latex setlocal wrap linebreak showbreak=>

autocmd FileType matlab setlocal tabstop=4


" custom functions
"
" this is by doug black
"
" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

set background=dark
"
if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    "source ~/.vimrc_background
    colorscheme base16-default-dark
endif

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = { "mode": "passive", "active_filetypes": [], "passive_filetypes": [] }


" spell
"
set spell spelllang=en_us
