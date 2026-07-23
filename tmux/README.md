# tmux

Prefix is **Ctrl+b** (default; not overridden here). Notation below: `C-b` = prefix, then the next key.

## Sessions

| Keys | Action |
|------|--------|
| `C-b d` | Detach |
| `C-b s` | List sessions |
| `C-b $` | Rename session |
| `tmux new -s name` | New named session |
| `tmux a -t name` | Attach to session |

## Windows

| Keys | Action |
|------|--------|
| `C-b c` | New window |
| `C-b ,` | Rename window |
| `C-b n` / `C-b p` | Next / previous window |
| `C-b 0`–`9` | Jump to window by number |
| `C-b &` | Kill window |
| `C-b w` | List windows |

## Panes

| Keys | Action |
|------|--------|
| `C-b %` | Split vertical |
| `C-b "` | Split horizontal |
| `C-b ←/↓/↑/→` | Move between panes |
| `C-b o` | Cycle panes |
| `C-b z` | Zoom / unzoom pane |
| `C-b x` | Kill pane |
| `C-b {` / `C-b }` | Swap pane left / right |
| `C-b Space` | Cycle layouts |

## Copy mode (vi)

Configured in `.tmux.conf` (`mode-keys vi`).

| Keys | Action |
|------|--------|
| `C-b [` | Enter copy mode |
| `j` / `k` | Scroll down / up |
| `C-d` / `C-u` | Half-page down / up |
| `v` | Begin selection (vi mode) |
| `y` | Copy selection (vi mode) |
| `q` / `Esc` | Exit copy mode |
| `C-b ]` | Paste |

## Misc

| Keys | Action |
|------|--------|
| `C-b ?` | List all key bindings |
| `C-b :` | Command prompt |
| `C-b t` | Clock |
