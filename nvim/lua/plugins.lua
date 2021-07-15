return require('packer').startup(function()

    -- self-manage as optional plugin
    use { 'wbthomason/packer.nvim' }

    -- colors
    use { 'siduck76/nvim-base16.lua' }

    -- the tree
    use { 'kyazdani42/nvim-tree.lua' }

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- LSP and completion
    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-lua/completion-nvim' }

    -- Lua development
    use { 'tjdevries/nlua.nvim' }

    use {
        "terrortylor/nvim-comment",
        config = [[require('config.nvim-comment')]]
    }

    -- Vim dispatch
    use { 'tpope/vim-dispatch' }

    -- Fugitive for Git
    use { 'tpope/vim-fugitive' }

end)
