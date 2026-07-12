# dotfiles

Personal [meowctl](https://github.com/meowshed/meowctl) configuration for Andrew Vasilyev.

## What it installs

A thin layer over the [dotmeow](https://github.com/meowshed/dotmeow) shared module — a complete, opinionated macOS development environment.

```
init.star            # shared base (work machine): dotmeow + AI tools + a few base apps
local.star.personal  # home-only apps (committed profile — symlink to local.star on the home box)
deps.mod             # module declaration + dotmeow dependency
components/           # personal component overlays (karabiner-local, …)
```

## Two machines, one repo

The base in `init.star` is the complete config for the **work** machine. The **home** machine adds personal apps (communication, creative/gaming, extra tools) on top — without duplicating the base — via `local.star`, which meowctl appends onto `init.star`.

`local.star` is gitignored (machine-specific) and never overwritten by `meowctl update`. The committed `local.star.personal` is the canonical home profile; the home machine just symlinks to it.

```sh
# bootstrap either machine
meowctl init https://github.com/retran/dotfiles

# home machine only — opt into personal apps:
cd ~/.config/meowctl && ln -sf local.star.personal local.star

meowctl apply
```

To change the home profile, edit `local.star.personal` (committed, shared) — the symlink follows.

## License

MIT
