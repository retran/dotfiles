# components/godot-gamedev/init.star
#
# platform: macos
#
# Personal Godot gamedev setup (GDScript; no C#/Mono for now).
# Installs ONLY the machine-level editor:
#   - godot (brew cask) : the Godot editor .app (GUI, Spotlight/Dock) + `godot` on PATH.
#
# GDScript TOOLING (gdformat/gdlint from gdtoolkit) is deliberately NOT installed
# globally — by convention it lives in each Godot project's own mise.toml, so
# every project pins its own version. Drop this into a project root:
#
#     # <project>/mise.toml
#     [tools]
#     "pipx:gdtoolkit" = "4.5"
#
# Then `mise install` in the project. meowvim's conform (gdformat) and nvim-lint
# (gdlint) resolve those via mise shims when nvim's cwd is inside the project.
#
# meowvim already ships the full GDScript stack — tree-sitter grammar, the LSP
# (attaches over TCP to the running editor on :6005), the DAP adapter (:6006),
# and the conform/nvim-lint wiring. This component only provides the editor.

platforms = ["macos"]

def install(ctx):
    pkg(manager = "brew", name = "godot", cask = True)

def upgrade(ctx):
    uppkg(manager = "brew", name = "godot", cask = True)

def uninstall(ctx):
    unpkg(manager = "brew", name = "godot", cask = True)
