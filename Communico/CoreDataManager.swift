//
//  CoreDataManager.swift
//  Communico
//
//  Created by scholar on 8/3/23.
//

import CoreData

class CoreDataManager: ObservableObject {
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Communico")
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
}
