//
//  Workout.swift
//  FitnessApp
//
//  Created by Elias Godschalk on 24.01.25.
//

import SwiftUI

struct Workout {
    let id: Int
    let title: String
    let image: String
    let tintColor: Color
    let duration: String
    let date: String
    let calories: String
    
    static let example1 = Workout(id: 0, title: "Running", image: "figure.run", tintColor: .cyan, duration: "51 min", date: "Aug", calories: "512 kcal")
    static let example2 = Workout(id: 1, title: "Running", image: "figure.run", tintColor: .cyan, duration: "51 min", date: "Aug", calories: "512 kcal")
    static let example3 = Workout(id: 2, title: "Running", image: "figure.run", tintColor: .cyan, duration: "51 min", date: "Aug", calories: "512 kcal")
    static let example4 = Workout(id: 3, title: "Running", image: "figure.run", tintColor: .cyan, duration: "51 min", date: "Aug", calories: "512 kcal")
}
