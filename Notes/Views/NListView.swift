//
//  NListView.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 12/02/25.
//

import SwiftUI

let cards: [NCard] = [
    NCard(title: "Card 1", text: "Texto del card 1", type: .small, isFavorite: false),
    NCard(title: "Card 2", text: "Texto del card 2", type: .medium, isFavorite: false),
    NCard(title: "Card 3", text: "Texto del card 3", type: .small, isFavorite: false),
    NCard(title: "Card 4", text: "Texto del card 4", type: .small, isFavorite: false)
]

struct NListView: View {
    var body: some View {
        List {
            ForEach (cards) { card in
                NCardView(card: card)
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    NListView()
}
