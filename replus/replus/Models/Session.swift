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
    
    // Currently initialised using sample data.
    init(id: UUID = UUID(), name: String, exercises: [Exercise] = Exercise.sampleExercises) {
        self.id = id
        self.name = name
        self.exercises = exercises
    }
}


extension Session {
    static var sampleSessions: [Session] {
        [
            Session(name: "Session 1"),
            Session(name: "Session 2"),
            Session(name: "Session 3"),
        ]
    }
}
