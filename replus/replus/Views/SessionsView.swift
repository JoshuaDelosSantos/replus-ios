/*
 SessionListView.swift
 
 Joshua Delos Santos
 02/01/2025
 
 */


import SwiftUI


struct SessionsView: View {
    let sessions = Session.sampleSessions
    
    var body: some View {
        NavigationView {
            List(sessions) { session in
                Text(session.name)
            }
            .navigationTitle("Sessions")
        }
    }
}


struct SessionsView_Previews: PreviewProvider {
    static var previews: some View {
        SessionsView()
    }
}
