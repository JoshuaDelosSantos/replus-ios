/*
 Session.swift
 
 Joshua Delos Santos
 02/01/2025
 
 */


import Foundation


struct Session: Identifiable {
    let id: UUID
    var name: String
    var exercises: [Exercise]
    
    init(id: UUID = UUID(), name: String, exercises: [Exercise] = []) {
        self.id = id
        self.name = name
        self.exercises = exercises
    }
}


extension Session {
    static var sampleSessions: [Session] {
        [
            Session(name: "Session 1", exercises: Exercise.sampleExercises),
            Session(name: "Session 2", exercises: Exercise.sampleExercises),
            Session(name: "Session 3", exercises: Exercise.sampleExercises),
        ]
    }
}
