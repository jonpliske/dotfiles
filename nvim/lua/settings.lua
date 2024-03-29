local cmd = vim.cmd

cmd 'syntax enable'
cmd 'filetype plugin indent on'

vim.g.python3_host_prog = vim.env.HOME .. '/.pyenv/versions/neovim3/bin/python'

vim.opt.errorbells = false
vim.opt.number = true
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.backspace = 'indent,eol,start'

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.encoding = 'utf-8'
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.hidden = true

vim.opt.ruler = true
cmd 'au FocusLost * :wa'

vim.opt.fileformats='unix,dos,mac'

vim.opt.showmatch = false
vim.opt.showmode = false
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.ttyfast = true
vim.opt.lazyredraw = true

-- speed up syntax highlighting
vim.opt.cursorcolumn = false
vim.opt.cursorline = false

cmd 'syntax sync minlines=256'
vim.opt.synmaxcol = 300

-- open help vertically
vim.api.nvim_exec([[
command! -nargs=* -complete=help Help vertical belowright help <args>
autocmd FileType help wincmd L
]], false)

--" Handle long lines
vim.opt.wrap = true
vim.opt.textwidth = 79
vim.opt.formatoptions = 'qrn1'

vim.opt.autoindent = true
vim.opt.showmatch = true
vim.opt.smarttab = true

vim.opt.et = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Time out on key codes but not mappings.
-- Improves terminal Vim sanity.
vim.opt.timeout = false
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 10

-- Better completion
vim.opt.complete = '.,w,b,u,t'
vim.opt.completeopt = 'longest,menuone'

-- cargo culting!!
if vim.opt.history:get() < 1000 then
    vim.opt.history = 50
end

if vim.opt.tabpagemax:get() < 50 then
    vim.opt.tabpagemax = 50
end


if vim.fn.has('mouse') then
    vim.opt.mouse = 'a'
end

-- This comes first, because we have mappings that depend on leader
-- With a map leader it's possible to do extra key combinations
-- i.e: <leader>w saves the current file
--let mapleader = ","
--let g:mapleader = ","

-- Force quickfix window to bottom
cmd 'autocmd FileType qf wincmd J'

-- Highlight on yank
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

