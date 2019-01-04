" Mouse support
:set mouse=a

" Number / relative number
:set number relativenumber

" No code folding
:set nofoldenable

map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
set clipboard=unnamedplus

let g:ackprg = 'ag --vimgrep --js --ts --html --ignore=node_modules --ignore=build'
map <leader>f :Ack<space>""<left>

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
