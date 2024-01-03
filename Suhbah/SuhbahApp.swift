//
//  SuhbahApp.swift
//  Suhbah
//
//  Created by Omar Shaarawi on 5/8/23.
//

import SwiftUI

@main
struct SuhbahApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Menu()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
