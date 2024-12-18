return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    use "EdenEast/nightfox.nvim"

    -- Plugins
    -- use { 'neoclide/coc.nvim', branch = 'release' }
    --
    -- cmp autocomplete
    use 'hrsh7th/nvim-cmp'
    use 'neovim/nvim-lspconfig'   -- LSP configurations
    use 'L3MON4D3/LuaSnip'        -- Snippet enginer
    use 'saadparwaiz1/cmp_luasnip' -- Snippet source
    use 'hrsh7th/cmp-buffer'      -- Buffer completions
    use 'hrsh7th/cmp-path'        -- Path completions
    use 'hrsh7th/cmp-cmdline'     -- Command-line completions   use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'rafamadriz/friendly-snippets'

    use { 'github/copilot.vim', branch = 'release' }
    use 'junegunn/fzf'

    use { "ibhagwan/fzf-lua",
      -- optional for icon support
      requires = { "nvim-tree/nvim-web-devicons" }
      -- or if using mini.icons/mini.nvim
      -- requires = { "echasnovski/mini.icons" }
    }
    --
    --
    use 'tpope/vim-commentary'
    use 'itchyny/lightline.vim'
    -- Colors
    use 'joshdick/onedark.vim'
    use { "catppuccin/nvim", as = "catppuccin" }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'python/black'
end)
