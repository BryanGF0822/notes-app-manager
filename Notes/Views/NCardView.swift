//
//  NCardView.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 12/02/25.
//

import SwiftUI

struct NCardView: View {
    
    let card: NCard
    
    var onToggleFavorite: (() -> Void)?
    
    func FavoriteButton() -> some View {
        Image(systemName: card.isFavorite ? "heart.fill" : "heart")
            .foregroundStyle(Color.red)
            .onTapGesture {
                onToggleFavorite?()
            }
    }
    
    @ViewBuilder
    func CardSmallView() -> some View {
        // MARK: Card pequeña
        HStack {
            Text(card.title)
                .font(.headline)
                .lineLimit(2)
                .frame(width: 120)
                .padding(8)
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(8)
            Text(card.text)
                .font(.subheadline)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
            FavoriteButton()
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
        .listRowSeparator(.hidden)
    }
    
    @ViewBuilder
    func CardMediumView() -> some View {
        // MARK: Card mediana
        VStack {
            HStack(alignment: .top) {
                Spacer()
                FavoriteButton()
            }
            Text(card.title)
                .font(.title2)
                .lineLimit(2)
                .padding(.vertical, 8)
                .padding(.horizontal, 30)
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(8)
            Text(card.text)
                .font(.body)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
        }
        .frame(height: 150)
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
        .listRowSeparator(.hidden)
    }
    
    var body: some View {
        switch card.type {
        case .small:
            CardSmallView()
        case .medium:
            CardMediumView()
        }
    }
}

#Preview {
    VStack {
        NCardView(card: NCard(title: "Swift", text: "A powerful programming language.", type: .small, isFavorite: false))
        NCardView(card: NCard(title: "SwiftUI Framework", text: "SwiftUI makes it easier than ever to build user interfaces across all Apple platforms with the power of Swift.", type: .medium, isFavorite: false))
        NCardView(card: NCard(title: "Performance", text: "Optimized for speed and efficiency.", type: .small, isFavorite: false))
        NCardView(card: NCard(title: "Declarative UI", text: "SwiftUI is a declarative framework, meaning you describe the UI and SwiftUI takes care of updates.", type: .medium, isFavorite: false))
        NCardView(card: NCard(title: "Xcode", text: "Apple's IDE for developing apps on iOS, macOS, watchOS, and tvOS.", type: .small,isFavorite: false))
        NCardView(card: NCard(title: "Concurrency", text: "Swift's concurrency model enables structured concurrency using async/await, actors, and tasks.", type: .medium,isFavorite: false))
    }
    
}
