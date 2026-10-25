# components/xcode/init.star
#
# platform: macos
# after:     ["@stdlib//components/mas"]
#
# Xcode — Mac App Store. stdlib has no component for it yet.

platforms = ["macos"]
after = ["@stdlib//components/mas"]

def install(ctx):
    pkg(manager = "mas", name = "497799835")  # Xcode

def verify(ctx):
    ctx.run("mas", ["list"])

def upgrade(ctx):
    uppkg(manager = "mas", name = "497799835")

def uninstall(ctx):
    unpkg(manager = "mas", name = "497799835")
