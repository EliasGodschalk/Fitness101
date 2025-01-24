//
//  ActivityCard.swift
//  FitnessApp
//
//  Created by Elias Godschalk on 24.01.25.
//

import SwiftUI

struct Activity {
    let id: Int
    let title: String
    let subtitle: String
    let image: String
    let tintColor: Color
    let amount: String
    
    static let example1 = Activity(id: 0, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9000")
    static let example2 = Activity(id: 1, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .red, amount: "9000")
    static let example3 = Activity(id: 2, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "9000")
    static let example4 = Activity(id: 3, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .purple, amount: "9000")

}

struct ActivityCard: View {
    @State var activity: Activity

    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .clipShape(.rect(cornerRadius: 15))
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(activity.title)
                        
                        Text(activity.subtitle)
                    }
                    Spacer()
                    
                    Image(systemName: activity.image)
                        .foregroundStyle(activity.tintColor)
                }
                Text(activity.amount)
                    .font(.title.bold())
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ActivityCard(activity: .example1)
}
