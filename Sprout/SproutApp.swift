//
//  SproutApp.swift
//  Sprout
//
//  Created by Harrison Kleiman on 6/14/22.
//

import SwiftUI

@main
struct SproutApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
