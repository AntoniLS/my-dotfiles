" share system clipboard
set clipboard=unnamedplus

" filetype detection, auto indentation and plugins
filetype indent plugin on

" syntax highlighting
syntax on

" YAML config
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Highlighting trailing whitespace in all files
autocmd BufRead,BufNewFile * match Error /\s\+$/

" Enable auto-indentation
set autoindent

" Set backspace so it acts more intuitively
set backspace=indent,eol,start


