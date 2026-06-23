# init.star — personal dotfiles
#
# This is a thin layer on top of the dotmeow shared module.
# Dotmeow provides the complete macOS dev environment; this repo
# adds personal-only apps and tools.

# --- shared environment (dotmeow) ---

component("@dotmeow")

# --- AI tools ---

component("@stdlib//components/opencode")
component("@stdlib//components/claude-code")

# --- personal apps: communication ---

component("@stdlib//components/discord")
component("@stdlib//components/telegram")
component("@stdlib//components/whatsapp")

# --- personal apps: creative / gaming ---

component("@stdlib//components/blender")
component("@stdlib//components/obs")
component("@stdlib//components/steam")
component("@stdlib//components/nvidia_geforce_now")

# --- personal apps: productivity / tools ---

component("@stdlib//components/orbstack")
component("@stdlib//components/zed")

# --- personal apps: Mac App Store ---

component("@stdlib//components/garageband")
component("@stdlib//components/kindle")
component("@stdlib//components/pixelmator_pro")
component("@stdlib//components/runcat")
component("@stdlib//components/mini_metro")
component("@stdlib//components/mini_motorways")
component("@stdlib//components/prime_video")
component("@stdlib//components/24hr_wallpaper")

# --- personal additions ---

component("karabiner-local")
