/*
 Line.swift
 
 Joshua Delos Santos
 03/01/2025
 
 */


import Foundation


struct Line: Identifiable {
    let id: UUID
    var reps: Int
    var weight: Double
    let date: String
    
    init(id: UUID = UUID(), reps: Int, weight: Double, date: String = Line.generateDate()) {
        self.id = id
        self.reps = reps
        self.weight = weight
        self.date = date
    }
    
    /// Helper function to generate a formatted date.
    private static func generateDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yy"  // Set the desired date format
        return formatter.string(from: Date()) // Use the current date
    }
}


extension Line {
    static var sampleLines: [Line] {
        [
            // Dates are auto-generated.
            Line(reps: 10, weight: 50.0),
            Line(reps: 8, weight: 60.5),
            Line(reps: 12, weight: 45.0)
        ]
    }
}
