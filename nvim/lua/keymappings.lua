local utils = require('utils')
local cmd = vim.cmd

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

-- Move up and down splitted lines (on small width screens)
-- map <Up> gk
-- map <Down> gj
-- map k gk
-- map j gj
utils.map('n', '<Up>', 'gk')
utils.map('n', '<Down>', 'gj')
utils.map('n', 'k', 'gk')
utils.map('n', 'j', 'gj')

utils.map('i', 'jk', '<ESC>l')

-- Act like D and C
-- nnoremap Y y$
utils.map('n', 'Y', 'y$')

-- Typo patrol
--     __
--     ||
--    ====
--    |  |__
--    |  |-.\
--    |__|  \\
--     ||   ||
--   ======__|
--  ________||__
-- /____________\
--
-- https://www.asciiart.eu/miscellaneous/other

-- Do not show q: window
utils.map('n', 'q:', ':q')
utils.map('n', ':Vs', ':vs')
utils.map('n', ':Sp', ':sp')




-- WIP: below this line is probably (more) broken
--
-- 888888888888888888888888888888888888888888888888888888888888
-- 888888888888888888888888888888888888888888888888888888888888
-- 8888888888888888888888888P""  ""9888888888888888888888888888
-- 8888888888888888P"88888P          988888"9888888888888888888
-- 8888888888888888  "9888            888P"  888888888888888888
-- 888888888888888888bo "9  d8o  o8b  P" od88888888888888888888
-- 888888888888888888888bob 98"  "8P dod88888888888888888888888
-- 888888888888888888888888    db    88888888888888888888888888
-- 88888888888888888888888888      8888888888888888888888888888
-- 88888888888888888888888P"9bo  odP"98888888888888888888888888
-- 88888888888888888888P" od88888888bo "98888888888888888888888
-- 888888888888888888   d88888888888888b   88888888888888888888
-- 8888888888888888888oo8888888888888888oo888888888888888888888
-- 8888888888888888888888888888888888888888888888888Ojo 9888888

-- Maybe something with search results...? TODO cargo-culting!
-- nnoremap n nzzzv
-- nnoremap N Nzzzv
utils.map('n', 'n', 'nzzzv')
utils.map('n', 'N', 'Nzzzv')

-- Function keys
utils.map('n', '<F7>', ':setlocal spell! spell?<CR>')

-- close all location lists and quickfix
utils.map('n', '<F11>', ':windo lcl|ccl<CR>')

--  Some useful quickfix shortcuts
-- :cc      see the current error
-- :cn      next error
-- :cp      previous error
-- :clist   list all errors
utils.map('n', '<C-n>', ':cn<CR>')
utils.map('n', '<C-m>', ':cp<CR>')

-- Change dir when switching buffers?
-- TODO: this breaks nvim-tree, causing empty buffers for non-empty files
-- cmd('autocmd BufEnter * silent! lcd %:p:h')

-- whitespace killa
-- nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
-- utils.map('<leader>W', [[:%s/\s\+$//<cr>:let @/=''<CR>]])
cmd [[
]]

-- =================== Terminal ======================
-- terminal-mode mappings
-- :tnoremap <Esc> <C-\><C-n>
utils.map('t', '<Esc>', '<C-\\><C-n>')


-- Oldies but goodies?
-- TODO port vimscript in mappings
vim.api.nvim_exec([[

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" CTRL-U in insert mode deletes a lot. Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" never do this again --> :set paste <ctrl-v> :set no paste
" https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" set 80 character line limit
if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif


 " ======= crow / lua / norns =======

 " crow websocket bindings
 " ...requires websocat + connected USB to crow

 " execute current line
 map <C-\> :silent .w !websocat ws://localhost:6666 -1<CR>
 " execute highlighted lines
 vmap <F5> :w<Home>silent <End> !sed -e '1i\```' -e '$a\```' <bar> websocat ws://localhost:6666<CR>
]], false)

