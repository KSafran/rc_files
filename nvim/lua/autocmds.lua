
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.py",
    command = ":silent! Black"
})

vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.tf", "*.tfvars"},
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
