" Only run on neovim
if has('nvim')

" PLUGINS
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" async running
" Plug 'neomake/neomake'

" syntax error/highlighting
"Plug 'vim-syntastic/syntastic'

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'scrooloose/nerdtree'
Plug 'hdima/python-syntax'

Plug 'bfredl/nvim-miniyank'

" Add plugins to &runtimepath
call plug#end()
set rtp+=/usr/local/opt/fzf
map <silent> <C-n> :NERDTreeToggle<CR>

""" SYNTASTIC PREFS
""set statusline+=%#warningmsg#
"s"et statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_highlighting = 1

"let g:syntastic_python_checkers = ['python']

"""
" Color
"""
:colorscheme desert 

" Syntax highlighting
let python_highlight_all = 1

" tabs are 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Automatically apply pep8
au FileType python setlocal formatprg=autopep8\ -

""" Use miniyank instead of default yank/paste
au VimEnter * map p <Plug>(miniyank-startput)
au VimEnter * map P <Plug>(miniyank-startPut)

endif
