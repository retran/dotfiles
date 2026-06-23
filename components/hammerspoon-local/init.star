# components/hammerspoon-local/init.star
#
# Personal Hammerspoon extensions.
# Links local.lua into ~/.hammerspoon/ so dotmeow's init.lua picks it up.

platforms = ["macos"]
after = ["@dotmeow//components/hammerspoon-config"]

def install(ctx):
    ctx.link_file("local.lua", "~/.hammerspoon/local.lua")

def upgrade(ctx):
    ctx.link_file("local.lua", "~/.hammerspoon/local.lua")

def uninstall(ctx):
    ctx.unlink_file("~/.hammerspoon/local.lua")
