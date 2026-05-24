# dotfiles

Personal [meowctl](https://github.com/meowshed/meowctl) configuration for Andrew Vasilyev.

## What it installs

This is a thin personal dotfiles repo that imports the [dotmeow](https://github.com/meowshed/dotmeow) shared module — a complete, opinionated macOS development environment.

```
init.star          # imports dotmeow + any personal additions
deps.mod           # module declaration + dotmeow dependency
MODULE.meow        # module identity
hooks/             # personal meowctl hooks
```

## Usage

```sh
meowctl init https://github.com/retran/dotfiles
```

## License

MIT
