return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

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

    use { 'github/copilot.vim', branch = 'release' }   use 'junegunn/fzf'
    --
    --
    use 'junegunn/fzf.vim'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-unimpaired'
    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'itchyny/lightline.vim'
    use 'joshdick/onedark.vim'
    use 'vim-syntastic/syntastic'
    use 'Chiel92/vim-autoformat'
    use 'python/black'
    use 'jpalardy/vim-slime'
end)
