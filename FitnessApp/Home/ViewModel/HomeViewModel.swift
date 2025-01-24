//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Elias Godschalk on 24.01.25.
//

import Foundation

@Observable
class HomeViewModel {
    let healthManager = HealthManager.shared
    
    
    var calories: Int = 0
    var exercise: Int = 0
    var stand: Int = 0
    
    var mockActivities: [Activity] = [
        .example1, .example2, .example3, .example4
    ]
    var mockWorkouts: [Workout] = [
        .example1, .example2, .example3, .example4
    ]
    
    init() {
        Task {
            do {
                try await healthManager.requestHealthKitAccess()
                fetchTodayCalories()
                fetchTodayExerciseTime()
                fetchTodayStandHours()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func fetchTodayCalories() {
        healthManager.fetchTodayCaloriesBurned { result in
            switch result {
            case .success(let calories):
                DispatchQueue.main.async {
                    self.stand = Int(calories)
                }
            case .failure(let failure):
                print("Error getting Calories")
                print(failure.localizedDescription)
            }
        }
    }
    func fetchTodayExerciseTime() {
        healthManager.fetchTodayExerciseTime { result in
            switch result {
            case .success(let exercise
            ):
                DispatchQueue.main.async {
                    self.exercise = Int(exercise)
                }
            case .failure(let failure):
                
                    print("Error getting Exercise time")
                print(failure.localizedDescription)
            }
        }
    }
    func fetchTodayStandHours() {
        healthManager.fetchTodayStandHours { result in
            switch result {
            case .success(let hours):
                print("Success stand hours")
                DispatchQueue.main.async {
                    self.stand = hours
                }
            case .failure(let failure):
                
                    print("Error getting stand hours")
                print(failure.localizedDescription)
            }
        }
    }
}
