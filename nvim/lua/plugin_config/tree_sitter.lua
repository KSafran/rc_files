require'nvim-treesitter.configs'.setup {
    ensure_installed = { "python", "lua", "bash", "go", "sql", "vue", "toml", "json", "terraform", "hcl"}, -- Languages to install
    highlight = {
        enable = true,              -- Enable syntax highlighting
        additional_vim_regex_highlighting = false, -- Avoid redundancy
    },
    indent = {
        enable = true,              -- Enable Treesitter-based indentation
    },
    auto_install = true,
}
