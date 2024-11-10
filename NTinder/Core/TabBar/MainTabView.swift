//
//  MainTabView.swift
//  Tinder Clone Again!
//
//  Created by Rakibur Khan on 7/6/24.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: Int = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            SwipingView()
                .tabItem { Image(systemName: "flame.circle.fill").renderingMode(.original) }
                .tag(0)
            
            Text("Search View")
                .tabItem { Image(systemName: "magnifyingglass") }
                .tag(1)
            
            Text("Chat View")
                .tabItem { Image(systemName: "message.fill") }
                .tag(2)
            
            Text("Profile View")
                .tabItem { Image(systemName: "person.fill") }
                .tag(3)
        }
        .tint(.primary)
    }
}

#Preview {
    MainTabView()
}
