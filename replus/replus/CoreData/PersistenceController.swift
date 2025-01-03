/*
 PersistenceController.swift
 
 Joshua Delos Santos
 03/01/2025
 
 */


import CoreData


class PersistenceController {
    static let shared = PersistenceController()
    
    private let coreDataStack = CoreDataStack.shared
    
    func saveContext() {
        if coreDataStack.viewContext.hasChanges {
            do {
                try coreDataStack.viewContext.save()
            } catch {
                print("Error saving context: \(error)")
            }
        }
    }
}
