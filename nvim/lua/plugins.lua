local packer = require('packer')
local use = packer.use

return packer.startup(function()

    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    -- dev
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'
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
    -- use 'L3MON4D3/LuaSnip'

    -- colors
    use 'siduck76/nvim-base16.lua'
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        -- your statusline
        config = function() require'config.statusline' end,
        -- some optional icons
        requires = {'kyazdani42/nvim-web-devicons', opt = true
    }
}

    -- the tree
    use 'kyazdani42/nvim-tree.lua'

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
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
