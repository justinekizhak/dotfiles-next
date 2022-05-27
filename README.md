[![img](https://img.shields.io/badge/Made_in-VS_CODE-blue?style=for-the-badge)](https://github.com/hlissner/doom-emacs)
[![img](https://img.shields.io/badge/follow_me-@alka1e-E4405F?style=for-the-badge&logo=instagram&labelColor=8f3c4c&logoColor=white)](https://www.instagram.com/alka1e)
[![img](https://img.shields.io/badge/follow_me-@alka1e-1DA1F2?style=for-the-badge&logo=twitter&labelColor=27597a&logoColor=white)](https://twitter.com/alka1e)

# My Dotfiles

[![img](https://img.shields.io/badge/license-mit-blueviolet?style=for-the-badge)]()

# Features

Dotfiles are managed using [chezmoi](https://www.chezmoi.io)

Contains settings for:

- Zsh

# Installation

- Install brew
- `brew install chezmoi`
- `chezmoi init --apply justinekizhak/dotfiles-next`
- Install zimfw using auto step then reset all the changes back to original
  - `curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh`
  - `chezmoi apply`
       all-overwrite
- `brew install git-delta bat pipx argcomplete ripgrep`

## Delta config for chezmoi

```
# ~/.config/chezmoi/chezmoi.toml
[diff]
    pager = "delta"
```

## Delta config for git
```
# ~/.gitconfig                  

[core]
    pager = delta

[interactive]
    diffFilter = delta --color-only

[delta]
    navigate = true  # use n and N to move between diff sections
    light = false    # set to true if you're in a terminal w/ a light background color (e.g. the default macOS terminal)

[merge]
    conflictstyle = diff3

[diff]
    colorMoved = default
```

# Screenshots

### ZSH shell

![img](./zsh/images/zsh.png)

# License

Licensed under the terms of [MIT License](LICENSE.md)

---

[![forthebadge](https://forthebadge.com/images/badges/built-with-love.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/built-with-swag.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/60-percent-of-the-time-works-every-time.svg)](https://forthebadge.com)
