-- Python provider
vim.g.python3_host_prog = vim.fn.expand("~/.config/nvim/env/bin/python")

require("config.lazy")

-- Load settings
require('settings')

require('fzf')

-- Load keymaps
require('keymaps')

-- Load autocmds
require('autocmds')

-- Load Lightline
require('lightline')
