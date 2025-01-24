//
//  HomeView.swift
//  FitnessApp
//
//  Created by Elias Godschalk on 24.01.25.
//

import SwiftUI

struct HomeView: View {
    @State private var calories: Int = 123
    @State private var active: Int = 50
    @State private var stand: Int = 8
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    Spacer()
                    VStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Calories")
                                .font(.callout.bold())
                                .foregroundStyle(.red)
                            
                            Text("123 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Active")
                                .font(.callout.bold())
                                .foregroundStyle(.green)
                            
                            Text("52 mins")
                                .bold()
                        }
                        .padding(.bottom)
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Stand")
                                .font(.callout.bold())
                                .foregroundStyle(.blue)
                            
                            Text("8 hours")
                                .bold()
                        }
                    }
                    Spacer()
                    ZStack {
                        ProgressCircleView(progress: $calories, goal: 600, color: .red)
                        ProgressCircleView(progress: $active, goal: 60, color: .green)
                            .padding(.all, 20)
                        ProgressCircleView(progress: $stand, goal: 12, color: .blue)
                            .padding(.all, 40)
                    }
                    .padding(.horizontal)
                    Spacer()
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    HomeView()
}
