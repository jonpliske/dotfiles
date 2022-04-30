-- Your custom attach function for nvim-lspconfig goes here.
local on_attach = function(_, bufnr)
    require('lsp_signature').on_attach({
        bind = true,
        handler_opts = {
            border = 'shadow'
        }
    })

    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings
    local opts = { noremap=true, silent=true }
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)

    -- LSP workspace
    buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)


end

require('lspconfig').pyright.setup({
    settings = {
        python = {
            venvPath = '/Users/jbp/.pyenv/versions/'
        }
    }
})

-- Configure LSP to use built-in nvim lua language server
require('nlua.lsp.nvim').setup(require('lspconfig'), {
    on_attach = on_attach,
    globals = {
        -- Norns
        'engine', 'grid', 'params', 'screen', 'crow',
        '_menu', '_norns', '_path', '_startup', 'arc', 'audio', 'cleanup',
        'clock', 'controlspec', 'coroutine', 'crow', 'debug', 'enc', 'engine',
        'grid', 'hid', 'include', 'inf', 'key', 'metro', 'midi', 'mix',
        'norns', 'osc', 'package', 'params', 'paramset', 'paths', 'poll',
        'redraw', 'screen', 'softcut', 'string', 'tab', 'util', 'wifi',

        -- crow
        'init', 'tell', 'quote', 'unique_id', 'cputime', 'justvolts', 'just12', 'hztovolts'
    }
})
