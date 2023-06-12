//
//  GovgptIOSApp.swift
//  GovgptIOS
//
//  Created by Leonce Nshuti on 6/5/23.
//

import SwiftUI

@main
struct GovgptIOSApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
