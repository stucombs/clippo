//
//  StatusMenuView.swift
//  clippo
//
//  Created by Stu Combs on 2/25/25.
//

import SwiftUI

struct StatusMenuView: View {
    @Environment(\.openWindow) private var openWindow

    var body: some View {
        ClipboardItemsView()
        Button("Settings", action: { newWindow(windowId: "settingsWindow") }
        )
        Button("Quit Clippo", action: quitApp)
    }
    
    private func quitApp() {
        NSApp.terminate(nil);
    }
    
    private func newWindow(windowId: String) {
        openWindow(id: windowId)
    }
}

#Preview {
    StatusMenuView()
}
