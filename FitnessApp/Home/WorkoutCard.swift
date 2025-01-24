//
//  WorkoutCard.swift
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

struct WorkoutCard: View {
    @State var workout: Workout
    var body: some View {
        HStack {
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .foregroundStyle(workout.tintColor)
                .padding()
                .background(.gray.opacity(0.1))
                .clipShape(.rect(cornerRadius: 10))
            
            VStack(spacing: 16) {
                HStack {
                    Text(workout.title)
                        .font(.title3.bold())
                    Spacer()
                    Text(workout.duration)
                }
                HStack {
                    Text(workout.date)
                    Spacer()
                    
                    Text(workout.calories)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    WorkoutCard(workout: Workout(id: 0, title: "Running", image: "figure.run", tintColor: .cyan, duration: "51 min", date: "Aug", calories: "512 kcal"))
}
