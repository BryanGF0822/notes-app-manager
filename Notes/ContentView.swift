//
//  ContentView.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 30/01/25.
//

import SwiftUI

struct ContentView: View {
        
    @StateObject var appInfo = AppInfo()
    
    var body: some View {
        TabView {
        NListView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            NListView(forFavorities: true)
                .tabItem {
                    Label("Favorite", systemImage: "heart.fill")
                }
        }
            .environmentObject(appInfo)
    }
}

#Preview {
    ContentView()
}
