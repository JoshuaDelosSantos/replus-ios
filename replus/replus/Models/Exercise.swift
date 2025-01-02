/*
 Exercise.swift
 
 Joshua Delos Santos
 03/01/2025
 
 */


import Foundation


struct Exercise: Identifiable {
    let id: UUID
    var name: String
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
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
