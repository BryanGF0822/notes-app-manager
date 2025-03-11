//
//  AppInfo.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 26/02/25.
//

import Foundation

class AppInfo: ObservableObject {
    
    @Published var cards: [NCard] = [
        NCard(title: "Compras Supermercado", text: "Leche, huevos, pan, arroz", type: .small, isFavorite: true),
        NCard(title: "Llamar a Juan", text: "Confirmar detalles de la reunión del viernes", type: .small, isFavorite: false),
        NCard(title: "Proyecto Swift", text: "Finalizar la integración con API y probar errores", type: .medium, isFavorite: true),
        NCard(title: "Entrenamiento", text: "Ejercicio de pierna y core, 60 minutos", type: .small, isFavorite: false),
        NCard(title: "Lista de películas", text: "Interstellar, Inception, The Matrix, The Dark Knight", type: .medium, isFavorite: true),
        NCard(title: "Recordatorio médico", text: "Cita con el dentista a las 10 AM", type: .small, isFavorite: false),
        NCard(title: "Revisión del código", text: "Hacer code review del PR #124 en GitHub", type: .medium, isFavorite: true),
        NCard(title: "Vacaciones", text: "Planificar viaje a la playa y reservar hotel", type: .small, isFavorite: false),
        NCard(title: "Curso de SwiftUI", text: "Completar la sección sobre animaciones", type: .medium, isFavorite: true),
        NCard(title: "Cena con amigos", text: "Reservar mesa en el restaurante italiano", type: .small, isFavorite: false),
        NCard(title: "Comprar Regalos", text: "Elegir un regalo para el cumpleaños de Ana", type: .small, isFavorite: true),
        NCard(title: "Revisión del Auto", text: "Cambio de aceite y revisión de frenos en el taller", type: .medium, isFavorite: false)
    ]
    
    var favorities: [NCard] {
        cards.filter { $0.isFavorite}
    }
    
    func createNote(card: NCard) {
        cards.append(card)
    }
    
    func toggleFavorite(card: NCard) {
        if let index = cards.firstIndex(of: card) {
            cards[index].isFavorite.toggle()
        }
    }
}
