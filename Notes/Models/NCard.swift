//
//  NCard.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 12/02/25.
//
import Foundation

struct NCard: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let text: String
    let type: NCardType
    var isFavorite: Bool
}

enum NCardType {
    case small
    case medium
}
