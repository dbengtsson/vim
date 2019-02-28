" Autoload
call pathogen#infect()
" autocmd vimenter * NERDTree
" JS/JSX Syntax and indent
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
" COLOR THEME & PLUGINS
syntax enable
" set background=dark
colorscheme gruvbox

" SETTINGS
" General
set autoread
set noswapfile

" Indentation
set shiftwidth=4
set tabstop=4		" visual spaces per tab
set softtabstop=4	" number of spaces in tab when editing
set expandtab		" use space for indentation

" UI Config
set number		    " show line numbers
set showcmd		    " show last command in bottom right
set cursorline		" highlight current line
filetype indent on	" filetype-specific indentation of files
set wildmenu		" visual autocomplete menu
set lazyredraw		" redraw only when needed
set showmatch		" highlight matching blocks [{()}]
set incsearch		" search while typing
set hlsearch		" search highlight matches
set splitright      " vsplit open new window to the right
set splitbelow      " split open new window below current
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:?
set backspace=indent,eol " backspace over everything in insert mode
        
" Key mappings
map <C-n> :NERDTreeToggle<CR>
noremap <F5> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>
 
" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
nnoremap <c-z> <nop>
