# dotfiles

Personal config for nvim, tmux, and Claude Code.

## Setup

```bash
git clone https://<PAT>@github.com/keviny2/dotfiles.git ~/dotfiles
bash ~/dotfiles/install.sh
source ~/.bashrc
```

## Contents

| Directory | Config | Cheat sheet |
|-----------|--------|-------------|
| `nvim/` | Neovim (LazyVim) | [nvim/README.md](nvim/README.md) |
| `tmux/` | tmux | [tmux/README.md](tmux/README.md) |
| `claude/` | Claude Code | — |

## Adding a new machine

Clone, run `install.sh`, done. The script is idempotent — safe to re-run.
