//
//  NCreateNoteView.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 17/02/25.
//

import SwiftUI

struct NCreateNoteView: View {
    
    @State private var title: String = ""
    @State private var text: String = ""
    @State var size: NCardType = .small
    @State var isFavorite: Bool = false
    
    var onNoteCreated: ((NCard) -> Void)?
    
    func onTap() {
        // Crear nota
        let card = NCard(title: title, text: text, type: size, isFavorite: isFavorite)
        print("Esta es tu nueva card: \(card)")
        
        onNoteCreated?(card)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Crear Nueva Nota")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 10)
                TextField("Titulo", text: $title)
                    .font(.headline)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                TextEditor(text: $text)
                    .scrollContentBackground(.hidden)
                    .font(.body)
                    .frame(height: 150)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                HStack{
                    Text("Tamaño:")
                    Spacer()
                    Picker("Tamaños", selection: $size) {
                        Text("Pequeño").tag(NCardType.small)
                        Text("Mediano").tag(NCardType.medium)
                    }
                }
                .padding()
                Toggle("Marcar como favorito", isOn: $isFavorite)
                    .padding()
                
                Button {
                    // Agregar nota
                    onTap()
                } label: {
                    Text("Guardar nota")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding(.top, 20)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .padding()
        .background(Color.cyan.opacity(0.2))
    }
}

#Preview {
    NCreateNoteView()
}
