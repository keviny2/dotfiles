# Neovim (LazyVim)

`<leader>` is **Space**. Press Space alone to open which-key and browse all mappings.

Full LazyVim defaults: https://www.lazyvim.org/keymaps

## Custom (this repo)

| Keys | Action |
|------|--------|
| `<leader>ff` | Telescope find files |
| `<leader>fg` | Telescope live grep |
| `<leader>fb` | Telescope buffers |
| `<leader>bd` | Delete buffer (keep split) |
| `Ctrl+/` | Toggle comment (normal/visual) |

## Common LazyVim defaults

### Files & search

| Keys | Action |
|------|--------|
| `<leader><space>` | Find files (root) |
| `<leader>/` | Grep (root) |
| `<leader>,` | Buffers |
| `<leader>e` | File explorer |
| `<leader>sk` | Search keymaps |

### Buffers & windows

| Keys | Action |
|------|--------|
| `]b` / `[b` | Next / previous buffer |
| `<leader>bb` | Switch to other buffer |
| `Ctrl+h/j/k/l` | Move between windows |
| `<leader>-` / `<leader>\|` | Split below / right |
| `<leader>wd` | Delete window |

### LSP / code

| Keys | Action |
|------|--------|
| `gd` | Go to definition |
| `gr` | References |
| `K` | Hover |
| `<leader>ca` | Code action |
| `<leader>cr` | Rename |
| `]d` / `[d` | Next / previous diagnostic |

### Git & misc

| Keys | Action |
|------|--------|
| `<leader>gg` | Lazygit |
| `<leader>l` | Lazy plugin manager |
| `<leader>cf` | Format |
| `Esc` | Clear search highlight |
