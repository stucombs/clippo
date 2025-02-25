//
//  clippoApp.swift
//  clippo
//
//  Created by Stu Combs on 2/25/25.
//

import SwiftUI

@main
struct clippoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
