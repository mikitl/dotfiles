" Enable modern Vim features not compatible with Vi spec.
set nocompatible

" Enable file type based indent configuration and syntax highlighting.
" Note that when code is pasted via the terminal, vim by default does not detect
" that the code is pasted (as opposed to when using vim's paste mappings), which
" leads to incorrect indentation when indent mode is on.
" To work around this, use ":set paste" / ":set nopaste" to toggle paste mode.
" You can also use a plugin to:
" - enter insert mode with paste (https://github.com/tpope/vim-unimpaired)
" - auto-detect pasting (https://github.com/ConradIrwin/vim-bracketed-paste)
filetype plugin indent on
syntax on

" User settings
set term=xterm-256color
set clipboard=unnamedplus
set number
set cursorline
set colorcolumn=81
set background=dark
set hlsearch

" " NERDTree configuration
" Open NERDTree by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Toggle NERDTree
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <Leader>n :NERDTree<Enter>
nnoremap <Leader>c :tabclose<Enter>

" Find the right file
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

