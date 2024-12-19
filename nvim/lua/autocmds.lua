-- vim.api.nvim_create_autocmd("BufWritePost", {
--     pattern = "*.py",
--     command = ":silent! Black"
-- })

-- vim.api.nvim_create_autocmd({"BufWritePre"}, {
--   pattern = {"*.tf", "*.tfvars"},
--   callback = function()
--     vim.lsp.buf.format({ async = false })
--   end,
-- })
vim.api.nvim_create_user_command("SqlfluffFix", function()
    local file = vim.fn.expand("%:p") -- Get the full path of the current file
    local cmd = "sqlfluff fix " .. file .. " --dialect postgres"
    vim.fn.system(cmd)                -- Run the shell command
    vim.cmd("edit")                   -- Reload the buffer to reflect changes
end, { desc = "Run sqlfluff on the current file" })

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format({ bufnr = args.buf })
    end,
})
