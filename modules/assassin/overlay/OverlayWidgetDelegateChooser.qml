pragma ComponentBehavior: Bound
import qs.services
import qs.modules.common
import qs.modules.common.widgets
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Bluetooth
import qs.modules.assassin.overlay.crosshair
import qs.modules.assassin.overlay.volumeMixer
import qs.modules.assassin.overlay.floatingImage
import qs.modules.assassin.overlay.fpsLimiter
import qs.modules.assassin.overlay.recorder
import qs.modules.assassin.overlay.resources
import qs.modules.assassin.overlay.notes

DelegateChooser {
    id: root
    role: "identifier"

    DelegateChoice { roleValue: "crosshair"; Crosshair {} }
    DelegateChoice { roleValue: "floatingImage"; FloatingImage {} }
    DelegateChoice { roleValue: "fpsLimiter"; FpsLimiter {} }
    DelegateChoice { roleValue: "recorder"; Recorder {} }
    DelegateChoice { roleValue: "resources"; Resources {} }
    DelegateChoice { roleValue: "notes"; Notes {} }
    DelegateChoice { roleValue: "volumeMixer"; VolumeMixer {} }
}
