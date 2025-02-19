//
//  ProgressExample.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 19/02/25.
//

import SwiftUI

struct ProgressExample: View {
    
    @State private var progress: Double = 0.3
    
    var body: some View {
        VStack {
            Text("Cargando...")
                .font(.headline)
            
            // Barra de progreso
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle())
                .padding()
            
            // Boton para simular progreso
            Button("Aumentar Progreso") {
                withAnimation {
                    progress = min(progress + 0.1, 1.0)
                }
            }
        }
    }
}

#Preview {
    ProgressExample()
}
