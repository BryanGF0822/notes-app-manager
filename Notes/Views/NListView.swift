//
//  NListView.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 12/02/25.
//

import SwiftUI

struct NListView: View {
    
    let cards: [NCard] = [
        NCard(title: "Card 1", text: "Texto del card 1", type: .small, isFavorite: false),
        NCard(title: "Card 2", text: "Texto del card 2", type: .medium, isFavorite: false),
        NCard(title: "Card 3", text: "Texto del card 3", type: .small, isFavorite: false),
        NCard(title: "Card 4", text: "Texto del card 4", type: .small, isFavorite: false)
    ]
    
    @State var showSheet: Bool = false
    
    var body: some View {
        List {
            ForEach (cards) { card in
                NCardView(card: card)
            }
        }
        .listStyle(.plain)
        .sheet(isPresented: $showSheet) {
            NCreateNoteView() { card in
                print(card)
                showSheet = false
            }
        }
        .overlay {
            VStack {
                Spacer()
                Button("Create Note") {
                    showSheet = true
                }
            }
            
        }
    }
}

#Preview {
    NListView()
}
