/*
 Exercise.swift
 
 Joshua Delos Santos
 03/01/2025
 
 */


import Foundation


struct Exercise: Identifiable {
    let id: UUID
    var name: String
    var lines: [Line]
    
    init(id: UUID = UUID(), name: String, lines: [Line] = []) {
        self.id = id
        self.name = name
        self.lines = lines
    }
}


extension Exercise {
    static var sampleExercises: [Exercise] {
        [
            Exercise(name: "Squats"),
            Exercise(name: "Pushups"),
            Exercise(name: "Plank"),
            Exercise(name: "Jumping Jacks"),
            Exercise(name: "Burpees"),
            Exercise(name: "Calf Raises"),
            Exercise(name: "Leg Raises"),
        ]
    }
}
