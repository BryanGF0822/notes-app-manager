//
//  ContentView.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 30/01/25.
//

import SwiftUI

struct ContentView: View {
    
    let cards: [NCard] = [
        NCard(title: "Card 1", text: "Texto del card 1", type: .small, isFavorite: false),
        NCard(title: "Card 2", text: "Texto del card 2", type: .medium, isFavorite: false),
        NCard(title: "Card 3", text: "Texto del card 3", type: .small, isFavorite: false),
        NCard(title: "Card 4", text: "Texto del card 4", type: .small, isFavorite: false)
    ]
        
    
    
    var body: some View {
        NListView()
    }
}

#Preview {
    ContentView()
}
