//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by Elias Godschalk on 24.01.25.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", systemImage: "house", value: "Home") {
                HomeView()
            }
            Tab("Data", systemImage: "chart.line.uptrend.xyaxis", value: "Historic") {
                HistoricDataView()
            }
        }
    }
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.label]
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
}

#Preview {
    FitnessTabView()
}
