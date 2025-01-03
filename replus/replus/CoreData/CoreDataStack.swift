/*
 CoreDataStack.swift
 
 Joshua Delos Santos
 03/01/2025
 
 */


import CoreData


class CoreDataStack {
    static let shared = CoreDataStack()

    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "ReplusDataModel")
        container.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unresolved error \(error)")
            }
        }
    }
    
    var viewContext: NSManagedObjectContext {
        return container.viewContext
    }
}
