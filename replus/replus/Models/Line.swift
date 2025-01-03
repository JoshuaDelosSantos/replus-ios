/*
 Line.swift
 
 Joshua Delos Santos
 03/01/2025
 
 */


import Foundation
import CoreData


@objc(Line)
public class Line: NSManagedObject, Identifiable {
    @NSManaged public var id: UUID
    @NSManaged public var reps: Int
    @NSManaged public var weight: Double
    @NSManaged public var date: Date
}


extension Line {
    static func createSampleLine(in context: NSManagedObjectContext) -> Line {
        let line = Line(context: context)  // Core Data's default object creation
        line.id = UUID()  // Assign a unique ID
        line.reps = 10  // Default reps
        line.weight = 50.0  // Default weight
        line.date = Date()  // Use current date
        return line
    }
    
    static func createSampleLines(in context: NSManagedObjectContext) -> [Line] {
        var lines = [Line]()
        for _ in 0..<3 {
            let line = createSampleLine(in: context)
            lines.append(line)
        }
        return lines
        }
    
    /// Helper function to format the date when needed.
    func formattedDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yy"  // Set the desired date format
        return formatter.string(from: self.date) // Format the stored Date
    }
}
