//
//  CommunicoApp.swift
//  Communico
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

@main
struct CommunicoApp: App {
    @StateObject private var coreDataManager = CoreDataManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, coreDataManager.persistentContainer.viewContext)
        }
    }
}
