# jaj•a•person's dotfiles

Putting one's dotfiles in a symlinked, version-controlled git repository is a
good idea, so I did it. It by no means contains all my dotfiles, yet, but so
far it contains what I deem most important.

## Installation

Pretty easy stuff.

```
$ git clone https://github.com/jajaperson/dotfiles.git
$ cd dotfiles
$ ./install
```

That's it.

## Submodules

I've used submodules for a bunch of things

### General purpose

- [**`dotbot`**](https://github.com/anishathalye/dotbot) — Manages the
  dotfiles, handles symlinking, submodule updates, etc.

### Vim

- [**`SpaceVim`**](https://github.com/SpaceVim/SpaceVim.git) — A
  SpaceMacs-like Vim distribution with nice defaults.

### `zsh` plugins

- [**`ohmyzsh`**](https://github.com/ohmyzsh/ohmyzsh) — doesn't really need
  an introduction.
- [**`zsh-syntax-highlighting`**](https://github.com/zsh-users/zsh-syntax-highlighting) —
  fish-style syntax highlighting.
- [**`powerlevel10k`**](https://github.com/romkatv/powerlevel10k) — an 
  improvement over the old [powerlevel9k](https://github.com/Powerlevel9k/powerlevel9k) 
  prompt, which can act as a much faster version of the minimal
  [pure](https://github.com/sindresorhus/pure) prompt.
- [**`zsh-completions`**](https://github.com/zsh-users/zsh-completions) — covers some
  completions `zsh` doesn't.

## Rationale

For zsh configuration, I opted to use three seperate files: [`.zshrc`](/zsh/zshrc),
[`.zprofile`](/zsh/zprofile), and [`.zlogin`](/zsh/zlogin); as well as files
outside of VCS: `.zshenv` and `.zprofile.local`.

- `.zshenv` and `.zshenv.local` configure `$PATH`
- `.zprofile` configures default environment variables
- `.zprofile.local` configures machine-specific environment variables
- `.zshrc` configures everything for interactive sessions
- `.zlogin` runs any commands that need to run once everything else is set up.

Then, I used a custom `$ZSH_CUSTOM` directory for custom plugins. This is
symlinked to `~/.config/ohmyzsh`.

All custom SpaceVim configuration is located in the [`SpaceVim.d`](/SpaceVim.d)
directory.
