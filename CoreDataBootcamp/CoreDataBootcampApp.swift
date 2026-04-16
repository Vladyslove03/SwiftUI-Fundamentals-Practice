//
//  CoreDataBootcampApp.swift
//  CoreDataBootcamp
//
//  Created by User on 16.04.2026.
//

import SwiftUI
import CoreData

@main
struct CoreDataBootcampApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
