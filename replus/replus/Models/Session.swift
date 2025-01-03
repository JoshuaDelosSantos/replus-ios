/*
 Session.swift
 
 Joshua Delos Santos
 02/01/2025
 
 */


import Foundation


struct Session: Identifiable {
    let id: UUID
    var name: String
    
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
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
