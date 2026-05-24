# hooks/meowvim.star
#
# Extension hook for the meowvim component.
# Runs after meowvim install/upgrade.
#
# The component clones retran/meowvim into ~/.config/nvim.
# lazy.nvim installs plugins on first launch; nothing to do here beyond a reminder.

def install(ctx):
    ctx.log("meowvim: open nvim to trigger lazy.nvim plugin sync")

def upgrade(ctx):
    ctx.log("meowvim: run :Lazy update inside nvim to update plugins")
