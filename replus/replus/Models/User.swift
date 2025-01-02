/*
 User.swift
 
 Joshua Delos Santos
 02/01/2025
 
 */


import Foundation


struct User: Identifiable {
    let id = UUID()
    var userName: String
    var sessions: [Session] = [] // Default empty for new users.
}


extension User {
    static var sampleDate: [User] {
        [
            User(userName: "Bob"),
            User(userName: "Daniel"),
            User(userName: "Matthew")
        ]
    }
}

