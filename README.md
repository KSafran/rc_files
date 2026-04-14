# rc_files

Configuration files for quick setup across machines.

## Neovim

The tracked Neovim config lives in [`nvim`](./nvim). This repo intentionally excludes anything machine-specific or secret, including:

- `~/.config/nvim/env`
- scratch files like `test.py` or `test.sql`
- Copilot auth state

### Sync between local config and repo

```bash
./sync_nvim.sh push
./sync_nvim.sh pull
```

### Set up a new macOS machine

```bash
./setup_nvim_macos.sh
```

That script will:

- install Homebrew dependencies
- copy this repo's Neovim config into `~/.config/nvim`
- create the Python provider venv at `~/.config/nvim/env`
- install Python formatter/LSP dependencies
- install `prettier`
- run `:Lazy restore` and `:TSUpdateSync` headlessly

After that, open `nvim` and run `:checkhealth`. If you use Copilot, complete auth with `:Copilot setup` or `:Copilot auth`.
