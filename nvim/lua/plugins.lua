local packer = require('packer')
local use = packer.use

return packer.startup(function()

    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    -- dev
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'
    use 'nvim-lua/plenary.nvim'
    use {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup({
                map_cr = true, --  map <CR> on insert mode
                map_complete = true -- it will auto insert `(` after select function or method item
            })
        end,
    }

    use "folke/lua-dev.nvim"
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
          require("trouble").setup()
        end
}
    use {
        'folke/which-key.nvim',
        config = function() require("which-key").setup {} end
    }

    use 'ntpeters/vim-better-whitespace'

    -- colors
    use 'norcalli/nvim-base16.lua'
    use {
        'NTBBloodbath/galaxyline.nvim',
        branch = 'main',
        -- your statusline
        config = function() require'config.statusline' end,
        -- some optional icons
        requires = {'kyazdani42/nvim-web-devicons', opt = true
    }
}

    -- the tree
    use {'kyazdani42/nvim-tree.lua',
         config = function()
           require('nvim-tree').setup {
                open_on_setup = true,
                filters = {
                    custom = { '.git', 'node_modules', '.cache' }
                },
                disable_netrw = true,
                hijack_netrw = true,
                renderer = {
                    indent_markers = {
                        enable = true,
                        icons = {
                            corner = "└",
                            edge = "│ ",
                            none = " ",
                        }
                    }
                }
           }
         end
}
    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- LSP and completion
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use {
        'onsails/lspkind-nvim',
        config = function() require('lspkind').init {} end
    }
    use {'sbdchd/neoformat'}

    -- use { 'nvim-lua/completion-nvim' }

    -- LSP quality-of-life
    use {'ray-x/lsp_signature.nvim'}
    use {'glepnir/lspsaga.nvim'}
    use {'simrat39/symbols-outline.nvim'}
    use {'euclidianAce/BetterLua.vim'}


    -- Lua development
    use { 'tjdevries/nlua.nvim' }

    use {
        "terrortylor/nvim-comment",
        config = [[require('config.nvim-comment')]]
    }

    -- Vim dispatch
    use { 'tpope/vim-dispatch' }

    -- Fugitive for Git

    -- Better syntax
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'nvim-treesitter/nvim-treesitter-textobjects'}
    use {'nvim-treesitter/playground'}


    -- Snip snip
    use {
        'hrsh7th/vim-vsnip',
        requires = {
            'rafamadriz/friendly-snippets', 'cstrap/python-snippets',
            'ylcnfrht/vscode-python-snippet-pack', 'xabikos/vscode-javascript',
            'golang/vscode-go', 'rust-lang/vscode-rust'
        }
    }
end)
