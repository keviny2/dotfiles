# dotfiles

Personal config for nvim, tmux, and Claude Code.

## Setup

```bash
git clone https://<PAT>@github.com/keviny2/dotfiles.git ~/dotfiles
bash ~/dotfiles/install.sh
source ~/.bashrc
```

## Contents

| Directory | Config |
|-----------|--------|
| `nvim/` | Neovim (LazyVim) |
| `tmux/` | tmux |
| `claude/` | Claude Code |

## Adding a new machine

Clone, run `install.sh`, done. The script is idempotent — safe to re-run.
