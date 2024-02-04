import AppKit
import ServiceManagement

final class AutoLaunchManager {
    func configureAutoLaunch(enabled: Bool) {
        if enabled {
            try? SMAppService().register()
        } else {
            try? SMAppService().unregister()
        }
    }
}
