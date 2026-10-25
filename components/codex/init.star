# components/codex/init.star
#
# platform: macos
# after:     ["@stdlib//components/brew"]
#
# OpenAI Codex (brew cask). stdlib has no component for it yet.

platforms = ["macos"]
after = ["@stdlib//components/brew"]

def install(ctx):
    pkg(manager = "brew", name = "codex", cask = True)

def upgrade(ctx):
    uppkg(manager = "brew", name = "codex", cask = True)

def uninstall(ctx):
    unpkg(manager = "brew", name = "codex", cask = True)
