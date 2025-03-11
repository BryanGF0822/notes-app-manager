//
//  NTextField.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 26/02/25.
//

import SwiftUI

struct NTextField: View {
    
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        // Reutilizamos el diseño del formulario original
        TextField(placeholder, text: $text)
            .font(.headline)
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
    }
}

#Preview {
    VStack {
        NTextField(placeholder: "Escribe algo...", text: .constant("Texto inicial"))
        NTextField(placeholder: "Escribe algo mas...", text: .constant(""))
    }
    .padding()
}
