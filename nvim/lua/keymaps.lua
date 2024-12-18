local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local fzf = require('fzf-lua')

-- General mappings
-- Disable the space key as a normal mode mapping
map('n', '<SPACE>', '<Nop>', { noremap = true, silent = true })
map('v', '<SPACE>', '<Nop>', { noremap = true, silent = true })

-- Set the leader key to space
vim.g.mapleader = ' '

-- Copilot
vim.g.copilot_no_tab_map = true
map("i", "<C-j>", 'copilot#Accept("<CR>")', { expr = true, silent = true })

-- Clipboard mappings using the leader key
map('n', '<Leader>y', '"+y', { noremap = true, silent = true })
map('n', '<Leader>p', '"+p', { noremap = true, silent = true })
map('n', '<Leader>Y', '"+Y', { noremap = true, silent = true })
map('n', '<Leader>P', '"+P', { noremap = true, silent = true })
map('v', '<Leader>y', '"+y', { noremap = true, silent = true })
map('v', '<Leader>p', '"+p', { noremap = true, silent = true })
map('v', '<Leader>Y', '"+Y', { noremap = true, silent = true })
map('v', '<Leader>P', '"+P', { noremap = true, silent = true })

map("i", "jj", "<Esc>", opts)
map("n", "<leader>b", "Obreakpoint()<esc>", opts)

-- Disable arrow keys
map("", "<Up>", "<Nop>", opts)
map("", "<Down>", "<Nop>", opts)
map("", "<Left>", "<Nop>", opts)
map("", "<Right>", "<Nop>", opts)

-- Clipboard
map("n", "<Leader>y", '"+y', opts)
map("n", "<Leader>p", '"+p', opts)

-- Tabs
map("n", "<leader>tn", ":tabnew<CR>", opts)
map("n", "<leader>tf", ":tabfind<CR>", opts)

-- FZF
map("n", "<C-f>", ":GFiles<CR>", opts)
map("n", "<C-g>", ":Ag<CR>", opts)

-- Highlight toggle
map("n", "<C-L>", ":nohlsearch<CR><C-L>", opts)

-- Black on C-q
map("n", "<C-q>", ":!black %<CR>", opts)

-- Recommended fzf keybindings
vim.keymap.set('n', '<leader>ff', fzf.files, { desc = "Find Files" })
vim.keymap.set('n', '<leader>fg', fzf.live_grep, { desc = "Live Grep" })
vim.keymap.set('n', '<leader>fb', fzf.buffers, { desc = "List Buffers" })
vim.keymap.set('n', '<leader>fh', fzf.help_tags, { desc = "Help Tags" })
vim.keymap.set('n', '<leader>fc', fzf.git_commits, { desc = "Git Commits" })
vim.keymap.set('n', '<leader>fs', fzf.grep_cword, { desc = "Search Word Under Cursor" })
