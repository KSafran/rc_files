local set = vim.opt

-- Basic editor settings
--
--
set.encoding = "utf-8"
set.hidden = true
set.cmdheight = 2
set.updatetime = 300
set.shortmess:append("c")
set.signcolumn = "yes"

-- Python provider
vim.g.python3_host_prog = vim.fn.expand("~/.config/nvim/env/bin/python")

set.number = true
set.smartindent = true
set.shiftwidth = 4
set.expandtab = true
set.tabstop = 4
set.scrolloff = 1
set.ignorecase = true
set.hlsearch = true
set.incsearch = true
set.backup = false
set.writebackup = false
set.swapfile = false
set.autoread = true
set.so = 7
set.ttimeout = true
set.ttimeoutlen = 100
set.clipboard = "unnamedplus"
set.laststatus = 2
set.statusline = "%#warningmsg# %{SyntasticStatuslineFlag()} %*"

-- Python provider
vim.g.pymode_python = 'python3'

-- Netrw settings
vim.g.netrw_browse_split = 3
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0

-- Colorscheme
vim.cmd("colorscheme onedark")

-- Syntastic
vim.g.syntastic_always_populate_loc_list = 1
vim.g.syntastic_auto_loc_list = 1
vim.g.syntastic_check_on_open = 1
vim.g.syntastic_check_on_wq = 0
vim.g.syntastic_python_checkers = { 'flake8' }

-- Slime
vim.g.slime_target = "tmux"
vim.g.slime_default_config = { socket_name = "default", target_pane = "{last}" }
vim.g.slime_python_ipython = 1
