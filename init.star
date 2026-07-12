# init.star — shared base (work machine)
#
# Thin layer over the dotmeow shared module. This file is the COMMON base and
# is the complete config for the WORK machine. Personal / home-only apps are
# NOT listed here — they live in local.star.personal and are opted into per
# machine via local.star (gitignored; meowctl appends its components to this
# base). See README.
#
#   Work machine:  init.star only.
#   Home machine:  ln -sf local.star.personal local.star   (adds personal apps)

# --- shared environment (dotmeow) ---

component("@dotmeow")

# --- AI tools ---

component("@stdlib//components/opencode")
component("@stdlib//components/claude-code")

# --- Mac App Store (base) ---

component("@stdlib//components/kindle")
component("@stdlib//components/runcat")
component("@stdlib//components/24hr_wallpaper")

# --- personal additions ---

component("karabiner-local")
