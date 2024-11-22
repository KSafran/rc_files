
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.py",
    command = ":Black"
})
