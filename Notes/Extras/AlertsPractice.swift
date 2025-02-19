//
//  AlertsPractice.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 18/02/25.
//

import SwiftUI

struct AlertsPractice: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        VStack {
            Button("Show Sheet") {
                // Mostrar alerta
                showSheet = true
            }
        }
        .sheet(isPresented: $showSheet) {
            NCreateNoteView()
        }
    }
}

#Preview {
    AlertsPractice()
}
