#!/bin/bash

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOCAL_NVIM_CONFIG="$HOME/.config/nvim"
LOCAL_NVIM_DATA="$HOME/.local/share/nvim"
PYTHON_ENV_DIR="$LOCAL_NVIM_CONFIG/env"

if ! command -v brew >/dev/null 2>&1; then
    echo "Homebrew is required. Install it first: https://brew.sh/"
    exit 1
fi

brew update
brew install \
    neovim \
    git \
    ripgrep \
    fd \
    fzf \
    node \
    python@3.12 \
    luarocks \
    lua-language-server \
    stylua \
    biome \
    pyright \
    terraform-ls

mkdir -p "$LOCAL_NVIM_CONFIG"
rsync -av --delete \
    --exclude="env" \
    "$REPO_ROOT/nvim/" "$LOCAL_NVIM_CONFIG/"

python3 -m venv "$PYTHON_ENV_DIR"
"$PYTHON_ENV_DIR/bin/pip" install --upgrade pip
"$PYTHON_ENV_DIR/bin/pip" install \
    pynvim \
    black \
    isort \
    sqlfmt \
    sqlfluff \
    pyright

npm install -g prettier
npm install -g typescript typescript-language-server

nvim --headless "+Lazy! restore" +qa
nvim --headless "+TSUpdateSync" +qa

cat <<'EOF'
Neovim config installed.

Manual follow-up on the new machine:
1. Open Neovim and run :checkhealth
2. If Copilot is needed, run :Copilot setup or :Copilot auth
3. For markdown preview, open a markdown file and run :MarkdownPreview
EOF
