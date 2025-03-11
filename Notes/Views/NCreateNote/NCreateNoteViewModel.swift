//
//  NCreateNoteViewModel.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 26/02/25.
//

import Foundation

class NCreateNoteViewModel: ObservableObject {
    
    @Published var title: String = ""
    @Published var text: String = ""
    @Published var size: NCardType = .small
    @Published var isFavorite: Bool = false
    
    func createNote() -> NCard {
        let card = NCard(title: title, text: text, type: size, isFavorite: isFavorite)
        return card
    }
}
