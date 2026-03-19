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

symlink "$DOTFILES/nvim"             "$HOME/.config/nvim"
symlink "$DOTFILES/tmux/.tmux.conf"  "$HOME/.tmux.conf"
symlink "$DOTFILES/claude/settings.json" "$HOME/.claude/settings.json"
symlink "$DOTFILES/claude/CLAUDE.md"     "$HOME/.claude/CLAUDE.md"

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

# --- Claude plugins ---
if claude plugin list 2>/dev/null | grep -q "code-review-graph"; then
    echo "claude plugin already installed: code-review-graph"
else
    claude plugin marketplace add tirth8205/code-review-graph
    claude plugin install code-review-graph@code-review-graph
fi

echo ""
echo "Done. Run 'source ~/.bashrc' to reload your shell."
