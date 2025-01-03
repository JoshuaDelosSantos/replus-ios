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
    let date: Date
    
    init(id: UUID = UUID(), reps: Int, weight: Double, date: Date) {
        self.id = id
        self.reps = reps
        self.weight = weight
        self.date = date
    }
}
