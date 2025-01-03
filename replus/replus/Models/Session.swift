/*
 Session.swift
 
 Joshua Delos Santos
 02/01/2025
 
 */


import CoreData


@objc(Session)
public class Session: NSManagedObject, Identifiable {
    @NSManaged public var id: UUID
    @NSManaged public var name: String
    @NSManaged public var exercises: Set<Exercise>
}


extension Session {
    static func createSampleSessions(in context: NSManagedObjectContext) -> [Session] {
        let session1 = Session(context: context)
        session1.id = UUID()
        session1.name = "Session 1"
        session1.exercises = Set(Exercise.createSampleExercises(in: context))

        let session2 = Session(context: context)
        session2.id = UUID()
        session2.name = "Session 2"
        session2.exercises = Set(Exercise.createSampleExercises(in: context))

        let session3 = Session(context: context)
        session3.id = UUID()
        session3.name = "Session 3"
        session3.exercises = Set(Exercise.createSampleExercises(in: context))

        return [session1, session2, session3]
    }
}
