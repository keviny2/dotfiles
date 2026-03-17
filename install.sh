#!/bin/bash
set -e

DOTFILES="$HOME/dotfiles"

# --- Symlinks ---
symlink() {
    local src=$1 dst=$2
    if [ -L "$dst" ]; then
        echo "symlink already exists: $dst"
    elif [ -e "$dst" ]; then
        echo "backing up existing $dst -> ${dst}.bak"
        mv "$dst" "${dst}.bak"
        ln -s "$src" "$dst"
    else
        ln -s "$src" "$dst"
        echo "linked $dst -> $src"
    fi
}

symlink "$DOTFILES/nvim"       "$HOME/.config/nvim"
symlink "$DOTFILES/tmux/.tmux.conf" "$HOME/.tmux.conf"

# --- apt packages ---
apt_install() {
    if dpkg -s "$1" &>/dev/null; then
        echo "already installed: $1"
    else
        sudo apt install -y "$1"
    fi
}

apt_install fd-find

# --- shell aliases ---
if grep -q "alias fd=fdfind" "$HOME/.bashrc"; then
    echo "fd alias already set"
else
    echo "alias fd=fdfind" >> "$HOME/.bashrc"
    echo "added fd alias to .bashrc"
fi

echo ""
echo "Done. Run 'source ~/.bashrc' to reload your shell."
