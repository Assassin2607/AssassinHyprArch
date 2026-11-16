import QtQuick
import Quickshell

import qs
import qs.modules.common
import qs.modules.assassin.background
import qs.modules.assassin.bar
import qs.modules.assassin.dock
import qs.modules.assassin.equalizer
import qs.modules.assassin.lock
import qs.modules.assassin.mediaControls
import qs.modules.assassin.notificationPopup
import qs.modules.assassin.onScreenDisplay
import qs.modules.assassin.onScreenKeyboard
import qs.modules.assassin.overview
import qs.modules.assassin.polkit
import qs.modules.assassin.settings
import qs.modules.assassin.regionSelector
import qs.modules.assassin.screenCorners
import qs.modules.assassin.screenTranslator
import qs.modules.assassin.sessionScreen
import qs.modules.assassin.sidebarLeft
import qs.modules.assassin.sidebarRight
import qs.modules.assassin.overlay
import qs.modules.assassin.verticalBar
import qs.modules.assassin.desktopMenu
import qs.modules.assassin.dropover
import qs.modules.assassin.frame

Scope {
    PanelLoader { extraCondition: !Config.options.bar.vertical; component: Bar {} }
    PanelLoader { component: Background {} }
    PanelLoader { extraCondition: Config.options.dock.enable; component: Dock {} }
    PanelLoader { component: EqualizerPopup {} }
    PanelLoader { component: Lock {} }
    PanelLoader { component: MediaControls {} }
    PanelLoader { component: NotificationPopup {} }
    PanelLoader { component: OnScreenDisplay {} }
    PanelLoader { component: OnScreenKeyboard {} }
    PanelLoader { component: Overlay {} }
    PanelLoader { component: Overview {} }
    PanelLoader { component: Polkit {} }
    PanelLoader { component: RegionSelector {} }
    PanelLoader { component: ScreenCorners {} }
    PanelLoader { component: ScreenTranslator {} }
    PanelLoader { component: SessionScreen {} }
    PanelLoader { extraCondition: GlobalStates.sidebarLeftOpen; component: SidebarLeft {} }
    PanelLoader { extraCondition: GlobalStates.sidebarRightOpen; component: SidebarRight {} }
    PanelLoader { extraCondition: Config.options.bar.vertical; component: VerticalBar {} }
    PanelLoader { component: Settings {} }
    PanelLoader { component: DesktopMenu {} }
    PanelLoader { extraCondition: GlobalStates.dropShelfOpen; component: DropShelfPanel {} }
    PanelLoader { component: NiriBackdrop {} }
    PanelLoader { component: ScreenFrame {} }
}
