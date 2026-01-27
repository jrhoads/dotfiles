dotfiles
========

Quick start (Linux/WSL)
-----------------------

```bash
git clone <this-repo> ~/.dotfiles
cd ~/.dotfiles
./install
```

That runs symlinks, terminfo, and **mise**-based tool install by default (bat, fd, fzf, jq, lsd, neovim, ripgrep, starship, tmux, uv, zoxide, etc.). No subcommand needed.

On each run, it creates a backup first at `~/dotfiles-backup`. During the symlink step, any existing target will be moved into `~/dotfiles-backup/<timestamp>/...` and then replaced with the symlink.

Brew is legacy/optional: use `./install homebrew` only if you need it (e.g. macOS).

Config
------

- **mise**: Tools and versions live in `config/mise/config.toml` (global user config at `~/.config/mise/config.toml` when linked). Per-machine overrides: `config/mise/config.local.toml` (gitignored).
