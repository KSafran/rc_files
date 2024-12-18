# Paths
LOCAL_NVIM_CONFIG="$HOME/.config/nvim"
REPO_NVIM_CONFIG="$HOME/Documents/personal/rc_files/nvim"

# Helper function to display usage
usage() {
    echo "Usage: $0 [push|pull]"
    echo "  push: Sync local Neovim .lua files to the GitHub repo."
    echo "  pull: Sync .lua files from the GitHub repo to the local Neovim config."
    exit 1
}

# Ensure the script is run with 'push' or 'pull'
if [ "$#" -ne 1 ]; then
    usage
fi

if [ "$1" == "push" ]; then
    echo "Syncing local Neovim .lua files to the GitHub repo..."
    rsync -av --delete \
        --prune-empty-dirs \
        --exclude="plugin/packer_compiled.lua" \
        --exclude="env" \
        --exclude="plugin/" \
        --include="*/" --include="*.lua" --exclude="*" \
        "$LOCAL_NVIM_CONFIG/" "$REPO_NVIM_CONFIG/"
    echo "Sync completed: Local -> Repo"
    exit 0
fi

# Pull .lua files from the repo to the local config
if [ "$1" == "pull" ]; then
    echo "Syncing .lua files from the GitHub repo to local Neovim config..."
    rsync -av --delete \
        --prune-empty-dirs \
        --exclude="plugin/packer_compiled.lua" \
        --exclude="env" \
        --exclude="plugin/" \
        --include="*/" --include="*.lua" --exclude="*" \
        "$REPO_NVIM_CONFIG/" "$LOCAL_NVIM_CONFIG/"
    echo "Sync completed: Repo -> Local"
    exit 0
fi

# If invalid option is passed
usage
