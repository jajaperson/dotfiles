# jaj•a•person's dotfiles

Putting one's dotfiles in a symlinked, version-controlled git repository is a
good idea, so I did it. It by no means contains all my dotfiles, yet, but so
far it contains what I deam most important.

## Installation

Pretty easy stuff.

```
$ git clone https://github.com/jajaperson/dotfiles.git
$ cd dotfiles
$ ./instal
```

That's it.

## Submodules

I've used submodules for a bunch of things

- [**`dotbot`**](https://github.com/anishathalye/dotbot) — Manages the
  dotfiles, handles symlinking, submodule updates, etc.
- [**`SpaceVim`**](https://github.com/SpaceVim/SpaceVim.git) — A
  SpaceMacs-like Vim distribution with nice defaults.
- [**`ohmyzsh`**](https://github.com/ohmyzsh/ohmyzsh) — doesn't really need
  an introduction.
- [**`zsh-syntax-highlighting`**](https://github.com/zsh-users/zsh-syntax-highlighting) —
  fish-style syntax highlighting.

## Rationale

For zsh configuration, I opted to use three seperate files: [`.zshrc`](/zsh/zshrc),
[`.zprofile`](/zsh/zprofile), and [`.zlogin`](/zsh/zlogin); as well as files outside of VCS: `.zshenv` and
`.zprofile.local`.

- `.zshenv` configures `$PATH`
- `.zprofile` configures default environment variables
- `.zprofile.local` configures machine-specific environment variables
- `.zshrc` configures everything for interactive sessions
- `.zlogin` runs any commands that need to run once everything else is set up.

Then, I used a custom `$ZSH_CUSTOM` directory for custom plugins. This is symlinked to `~/.config/ohmyzsh`.

All custom SpaceVim configuration is located in the [`SpaceVim.d`](/SpaceVim.d) directory.
