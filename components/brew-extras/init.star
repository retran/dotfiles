# components/brew-extras/init.star
#
# platform: macos
# after:     ["@stdlib//components/brew"]
#
# Homebrew formulae installed by hand that no stdlib or dotmeow component
# declares. luarocks here is Homebrew's (LuaJIT-era) build; stdlib's luarocks
# component installs a separate one over mise's Lua 5.4.

platforms = ["macos"]
after = ["@stdlib//components/brew"]

FORMULAE = [
    "findutils",
    "go-task",
    "groff",
    "luajit",
    "luarocks",
    "poppler",
    "potrace",
]

def install(ctx):
    for name in FORMULAE:
        pkg(manager = "brew", name = name)

def upgrade(ctx):
    for name in FORMULAE:
        uppkg(manager = "brew", name = name)

def uninstall(ctx):
    for name in FORMULAE:
        unpkg(manager = "brew", name = name)
