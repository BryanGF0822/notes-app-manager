//
//  NTextEditor.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 6/03/25.
//

import SwiftUI

struct NTextEditor: View {
    
    @Binding var text: String
    
    var body: some View {
        // Tambien reutilizamos el deseño del formulario original
        TextEditor(text: $text)
            .scrollContentBackground(.hidden)
            .font(.body)
            .frame(height: 150)
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
    }
}

#Preview {
    VStack {
        NTextEditor(text: .constant("Tener listo el proyecto para presentar mañana en la daily"))
    }
    .padding()
    
}
