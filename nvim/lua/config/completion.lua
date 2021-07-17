local utils = require('utils')

vim.opt.completeopt = 'menuone,noinsert,noselect'
vim.cmd [[set shortmess+=c]]
vim.g.completion_confirm_key = ""
vim.g.completion_matching_strategy_list = {
    'exact',
    'substring',
    'fuzzy'
}

-- <Tab> for completion menu nav
utils.map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
utils.map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})
