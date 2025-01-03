/*
 Exercise.swift
 
 Joshua Delos Santos
 03/01/2025
 
 */


import CoreData


@objc(Exercise)
public class Exercise: NSManagedObject, Identifiable {
    @NSManaged public var id: UUID
    @NSManaged public var name: String
    @NSManaged public var lines: Set<Line>?
}


// Creating sample exercises with Core Data context
extension Exercise {
    static var sampleLine: Line {
        return Line.createSampleLine(in: <#T##NSManagedObjectContext#>)
    }
    
    static func createSampleExercises(in context: NSManagedObjectContext) -> [Exercise] {
        let exercise1 = Exercise(context: context)
        exercise1.id = UUID()
        exercise1.name = "Squats"
        exercise1.lines = Set(Line.createSampleLines(in: context))

        let exercise2 = Exercise(context: context)
        exercise2.id = UUID()
        exercise2.name = "Pushups"
        exercise2.lines = Set(Line.createSampleLines(in: context))

        let exercise3 = Exercise(context: context)
        exercise3.id = UUID()
        exercise3.name = "Plank"
        exercise3.lines = Set(Line.createSampleLines(in: context))

        let exercise4 = Exercise(context: context)
        exercise4.id = UUID()
        exercise4.name = "Jumping Jacks"
        exercise4.lines = Set(Line.createSampleLines(in: context))

        let exercise5 = Exercise(context: context)
        exercise5.id = UUID()
        exercise5.name = "Burpees"
        exercise5.lines = Set(Line.createSampleLines(in: context))

        let exercise6 = Exercise(context: context)
        exercise6.id = UUID()
        exercise6.name = "Calf Raises"
        exercise6.lines = Set(Line.createSampleLines(in: context))

        let exercise7 = Exercise(context: context)
        exercise7.id = UUID()
        exercise7.name = "Leg Raises"
        exercise7.lines = Set(Line.createSampleLines(in: context))

        return [exercise1, exercise2, exercise3, exercise4, exercise5, exercise6, exercise7]
    }
}
