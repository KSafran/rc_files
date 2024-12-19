return {
    {
        "stevearc/conform.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local conform = require("conform")
            local util = require("conform.util")

            conform.setup({
                log_level = vim.log.levels.DEBUG,
                -- formatters = {
                --     sqlfluff = {
                --         command = "sqlfluff",                                                            -- Correct command
                --         args = { "fix", "--dialect", "postgres", "--stdin-filename", "$FILENAME", "-" }, -- Use the file directly
                --         stdin = true,
                --         cwd = util.root_file({
                --             "pyproject.toml",
                --         }),
                --         require_cwd = false,
                --     },
                -- },
                formatters_by_ft = {
                    javascript = { "prettier" },
                    typescript = { "prettier" },
                    javascriptreact = { "prettier" },
                    typescriptreact = { "prettier" },
                    css = { "prettier" },
                    html = { "prettier" },
                    json = { "prettier" },
                    yaml = { "prettier" },
                    markdown = { "prettier" },
                    lua = { "stylua" },
                    python = { "isort", "black" },
                    sql = { "sqlfmt" },
                    -- sql = { "sqlfluff" },
                },
                format_on_save = {
                    lsp_fallback = true,
                    async = false,
                    timeout_ms = 1000,
                },
            })
        end,
    }
}
