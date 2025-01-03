/*
 User.swift
 
 Joshua Delos Santos
 02/01/2025
 
 */


import Foundation


struct User: Identifiable {
    let id: UUID
    var name: String
    var sessions: [Session]
    
    init(id: UUID = UUID(), name: String, sessions: [Session] = []) {
        self.id = id
        self.name = name
        self.sessions = sessions
    }
}


extension User {
    static var sampleData: [User] {
        [
            User(name: "Bob", sessions: Session.sampleSessions),
            User(name: "Daniel", sessions: Session.sampleSessions),
            User(name: "Matthew", sessions: Session.sampleSessions)
        ]
    }
}

