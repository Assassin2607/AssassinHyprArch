pragma Singleton

import qs
import QtQuick
import Quickshell

Singleton {
    id: root

    function runSystemUpdate() {
        Quickshell.execDetached([
            "kitty", "--hold",
            "fish", "-i", "-l", "-c",
            "if type -q yay; yay -Syu --combinedupgrade=false; else if type -q paru; paru -Syu; else; sudo pacman -Syu; end"
        ])
        Qt.callLater(() => GlobalStates.settingsOpen = false)
    }

    function runUpdateDots() {
        const updateScript = `
            set -e
            DIR="$HOME/.config/quickshell"

            rm -rf "$DIR/AssassinHyprArch-tmp"
            git clone https://github.com/Assassin2607/AssassinHyprArch.git "$DIR/AssassinHyprArch-tmp"

            rm -rf "$DIR/AssassinHyprArch-old"
            [ -d "$DIR/AssassinHyprArch" ] && mv "$DIR/AssassinHyprArch" "$DIR/AssassinHyprArch-old"
            mv "$DIR/AssassinHyprArch-tmp" "$DIR/AssassinHyprArch"

            killall qs 2>/dev/null || true
            sleep 0.5
            setsid qs -c AssassinHyprArch >/tmp/qs.log 2>&1 < /dev/null &
            disown

            rm -rf "$DIR/AssassinHyprArch-old"
        `

        Quickshell.execDetached(["kitty", "--hold", "bash", "-c", updateScript])
        Qt.callLater(() => GlobalStates.settingsOpen = false)
    }
}
