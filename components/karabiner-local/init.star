# components/karabiner-local/init.star
#
# Personal Karabiner-Elements config.
# Extends dotmeow's shared config (caps lock remap) with Das Keyboard
# device-specific modifier swaps (ANSI USA layout, vendor 9456 / product 320).
# Re-links ~/.config/karabiner/karabiner.json to this file, replacing the
# dotmeow symlink since Karabiner reads a single JSON config.

platforms = ["macos"]
after = ["@dotmeow//components/karabiner-config"]

def install(ctx):
    d = ctx.home + "/.config/karabiner"
    ctx.mkdir(d)
    ctx.link_file("karabiner.json", d + "/karabiner.json")

def upgrade(ctx):
    install(ctx)

def uninstall(ctx):
    ctx.remove_symlink(ctx.home + "/.config/karabiner/karabiner.json")
