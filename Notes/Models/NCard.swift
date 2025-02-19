//
//  NCard.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 12/02/25.
//
import Foundation

struct NCard: Identifiable {
    let id = UUID()
    let title: String
    let text: String
    let type: NCardType
    let isFavorite: Bool
}

enum NCardType {
    case small
    case medium
}
