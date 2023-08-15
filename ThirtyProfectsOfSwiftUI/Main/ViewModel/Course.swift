//
//  Course.swift
//  SwiftUICourse
//
//  MARK: codelab21 follow me on Instagram and YouTube
//

import Foundation
import SwiftUI

class CourseViewModel: ObservableObject {
    struct CourseTutorial {
        let id = UUID()
        let name: String
        let destinationView: AnyView
        
        init(name: String, destinationView: AnyView) {
            self.name = name
            self.destinationView = destinationView
        }
    }
    
    let CourseTutorials: [CourseTutorial] = [
        CourseTutorial(name: "Weather App", destinationView: AnyView(WeatherView())),
        CourseTutorial(name: "Task Manager", destinationView: AnyView(TaskView())),
        CourseTutorial(name: "Recipe Book", destinationView: AnyView(RecipeView(recipeManager: RecipeManager()))),
        CourseTutorial(name: "Fitness Tracker", destinationView: AnyView(Text("Fitness Tracker App"))),
        CourseTutorial(name: "E-Commerce Store", destinationView: AnyView(Text("E-Commerce Store App"))),
        CourseTutorial(name: "Photo Gallery", destinationView: AnyView(Text("Photo Gallery App"))),
        CourseTutorial(name: "Chat Application", destinationView: AnyView(Text("Chat Application App"))),
        CourseTutorial(name: "Travel Journal", destinationView: AnyView(Text("Travel Journal App"))),
        CourseTutorial(name: "Audio Player", destinationView: AnyView(Text("Music Player App"))),
        CourseTutorial(name: "To-Do List", destinationView: AnyView(Text("To-Do List App"))),
        CourseTutorial(name: "Drawing App", destinationView: AnyView(Text("Drawing App App"))),
        CourseTutorial(name: "Language Learning", destinationView: AnyView(Text("Language Learning App"))),
        CourseTutorial(name: "News Reader", destinationView: AnyView(Text("News Reader App"))),
        CourseTutorial(name: "Finance Tracker", destinationView: AnyView(Text("Finance Tracker App"))),
        CourseTutorial(name: "Event Countdown", destinationView: AnyView(Text("Event Countdown App"))),
        CourseTutorial(name: "Health Diary", destinationView: AnyView(Text("Health Diary App"))),
        CourseTutorial(name: "Trivia Quiz", destinationView: AnyView(Text("Trivia Quiz App"))),
        CourseTutorial(name: "Location-based Reminders", destinationView: AnyView(Text("Location-based Reminders App"))),
        CourseTutorial(name: "AR Showcase", destinationView: AnyView(Text("AR Showcase App"))),
        CourseTutorial(name: "Virtual Plant Care", destinationView: AnyView(Text("Virtual Plant Care App"))),
        CourseTutorial(name: "Language Translation", destinationView: AnyView(Text("Language Translation App"))),
        CourseTutorial(name: "Cocktail Recipe Guide", destinationView: AnyView(Text("Cocktail Recipe Guide App"))),
        CourseTutorial(name: "Daily Journal", destinationView: AnyView(Text("Daily Journal App"))),
        CourseTutorial(name: "Pet Adoption", destinationView: AnyView(Text("Pet Adoption App"))),
        CourseTutorial(name: "Home Automation", destinationView: AnyView(Text("Home Automation App"))),
        CourseTutorial(name: "Random Quotes Generator", destinationView: AnyView(Text("Random Quotes Generator App"))),
        CourseTutorial(name: "Language Pronunciation", destinationView: AnyView(Text("Language Pronunciation App"))),
        CourseTutorial(name: "Fashion Lookbook", destinationView: AnyView(Text("Fashion Lookbook App"))),
        CourseTutorial(name: "Meditation Guide", destinationView: AnyView(Text("Meditation Guide App"))),
        CourseTutorial(name: "Virtual Reality Tours", destinationView: AnyView(Text("Virtual Reality Tours App"))),
    ]
}
