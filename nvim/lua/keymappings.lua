local utils = require('utils')

-- Close search highlight
--nnoremap <leader><space> :nohlsearch<CR>
utils.map('n', '<leader><space>', ':nohlsearch<CR>')

-- Fast saving
--nmap <leader>w :w!<cr>
utils.map('n', '<leader>w', ':w!<CR>')

-- Close quickfix easily
--nnoremap <leader>a :cclose<CR>
utils.map('n', '<leader>a', ':cclose<CR>')

-- Buffer prev/next
--nnoremap <C-x> :bnext<CR>
--nnoremap <C-z> :bprev<CR>
utils.map('n', '<C-x>', ':bnext<CR>')
utils.map('n', '<C-y>', ':bprev<CR>')

--" Better split switching
--map <C-j> <C-W>j
--map <C-k> <C-W>k
--map <C-h> <C-W>h
--map <C-l> <C-W>l
utils.map('n', '<C-j>', '<C-W>j')
utils.map('n', '<C-k>', '<C-W>k')
utils.map('n', '<C-h>', '<C-W>h')
utils.map('n', '<C-l>', '<C-W>l')

-- Center the screen
--nnoremap <space> zz
utils.map('n', 'zz', ':cclose<CR>')

