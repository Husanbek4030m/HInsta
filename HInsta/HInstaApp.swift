//
//  HInstaApp.swift
//  HInsta
//
//  Created by Karavella on 01/09/22.
//

import SwiftUI

@main
struct HInstaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
