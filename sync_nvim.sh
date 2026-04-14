#!/bin/bash

set -euo pipefail

LOCAL_NVIM_CONFIG="$HOME/.config/nvim"
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_NVIM_CONFIG="$REPO_ROOT/nvim"

# Helper function to display usage
usage() {
    echo "Usage: $0 [push|pull]"
    echo "  push: Sync tracked Neovim config files from local config into this repo."
    echo "  pull: Sync tracked Neovim config files from this repo into local config."
    exit 1
}

if [ "$#" -ne 1 ]; then
    usage
fi

mkdir -p "$LOCAL_NVIM_CONFIG"

RSYNC_ARGS=(
    -av
    --delete
    --prune-empty-dirs
    --include="*/"
    --include="init.lua"
    --include="lazy-lock.json"
    --include="lua/*.lua"
    --include="lua/**/*.lua"
    --exclude="*"
)

if [ "$1" == "push" ]; then
    echo "Syncing tracked Neovim config files: local -> repo"
    rsync "${RSYNC_ARGS[@]}" "$LOCAL_NVIM_CONFIG/" "$REPO_NVIM_CONFIG/"
    echo "Sync completed: Local -> Repo"
    exit 0
fi

if [ "$1" == "pull" ]; then
    echo "Syncing tracked Neovim config files: repo -> local"
    rsync "${RSYNC_ARGS[@]}" "$REPO_NVIM_CONFIG/" "$LOCAL_NVIM_CONFIG/"
    echo "Sync completed: Repo -> Local"
    exit 0
fi

usage
