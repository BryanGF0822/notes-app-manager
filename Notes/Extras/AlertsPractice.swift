//
//  AlertsPractice.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 18/02/25.
//

import SwiftUI

struct AlertsPractice: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack {
            Button("Show Alert") {
                // Mostrar alerta
                showAlert = true
            }
        }
        .alert("Este es un mensaje de alerta", isPresented: $showAlert) {
            Button("Aceptar") {
                print("Aceptar")
            }
            Button("Cancelar") {
                print("Cancelar")
            }
        }
    }
}

#Preview {
    AlertsPractice()
}
