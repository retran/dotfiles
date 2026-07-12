# components/godot-gamedev/init.star
#
# platform: macos
#
# Personal Godot gamedev setup (GDScript; no C#/Mono for now).
#   - godot     (brew cask)  : the Godot editor .app (GUI, Spotlight/Dock).
#   - gdtoolkit (pip)         : gdformat + gdlint CLIs.
#
# meowvim already ships the full GDScript stack — tree-sitter grammar, the LSP
# (connects over TCP to the running editor on :6005), the DAP adapter (:6006),
# and conform/nvim-lint wired to gdformat/gdlint. This component just provides
# the binaries those integrations shell out to.
#
# Note: Godot's GDScript LSP is the editor itself — open the project in Godot
# and nvim's gdscript client attaches to it (Editor Settings → Network →
# Language Server, port 6005; DAP debug server on 6006).

platforms = ["macos"]

def install(ctx):
    pkg(manager = "brew", name = "godot", cask = True)
    pkg(manager = "python", name = "gdtoolkit")

def upgrade(ctx):
    uppkg(manager = "brew", name = "godot", cask = True)
    uppkg(manager = "python", name = "gdtoolkit")

def uninstall(ctx):
    unpkg(manager = "brew", name = "godot", cask = True)
    unpkg(manager = "python", name = "gdtoolkit")
