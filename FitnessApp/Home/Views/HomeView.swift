//
//  HomeView.swift
//  FitnessApp
//
//  Created by Elias Godschalk on 24.01.25.
//

import SwiftUI

struct HomeView: View {
        
    @State var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    
                    HStack {
                        Spacer()
                        VStack(alignment: .leading) {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Calories")
                                    .font(.callout.bold())
                                    .foregroundStyle(.red)
                                
                                Text("\(viewModel.calories)")
                                    .bold()
                            }
                            .padding(.bottom)
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Active")
                                    .font(.callout.bold())
                                    .foregroundStyle(.green)
                                
                                Text("\(viewModel.exercise)")
                                    .bold()
                            }
                            .padding(.bottom)
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Stand")
                                    .font(.callout.bold())
                                    .foregroundStyle(.blue)
                                
                                Text("\(viewModel.stand)")
                                    .bold()
                            }
                        }
                        Spacer()
                        ZStack {
                            ProgressCircleView(progress: $viewModel.calories, goal: 600, color: .red)
                            ProgressCircleView(progress: $viewModel.exercise, goal: 60, color: .green)
                                .padding(.all, 20)
                            ProgressCircleView(progress: $viewModel.stand, goal: 12, color: .blue)
                                .padding(.all, 40)
                        }
                        .padding(.horizontal)
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Text("Fitness Activity")
                        
                        Spacer()
                        
                        Button {
                            print("show more")
                        } label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundStyle(.white)
                                .background(Color.blue)
                                .clipShape(.rect(cornerRadius: 20))
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                        ForEach(viewModel.mockActivities, id: \.id) { activity in
                            ActivityCard(activity: activity)
                        }
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Fitness Activity")
                        
                        Spacer()
                        
                        NavigationLink{
                            EmptyView()
                        } label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundStyle(.white)
                                .background(Color.blue)
                                .clipShape(.rect(cornerRadius: 20))
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    LazyVStack {
                        ForEach(viewModel.mockWorkouts, id: \.id) { workout in
                            WorkoutCard(workout: workout)
                        }
                    }
                    .padding(.bottom)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
