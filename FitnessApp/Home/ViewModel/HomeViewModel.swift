//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Elias Godschalk on 24.01.25.
//

import Foundation

@Observable
class HomeViewModel {
    var calories: Int = 123
    var active: Int = 50
    var stand: Int = 8
    var mockActivities: [Activity] = [
            .example1, .example2, .example3, .example4
        ]
        var mockWorkouts: [Workout] = [
            .example1, .example2, .example3, .example4
        ]
}
