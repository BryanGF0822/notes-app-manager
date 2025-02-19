//
//  GesturesPractices.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 18/02/25.
//

import SwiftUI

struct GesturesPractices: View {
    
    @State var color: Color = .black
    @State var offset: CGSize = .zero
    
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .offset(offset)
            .onTapGesture(count: 2) {
                color = .red
            }
            .onLongPressGesture(minimumDuration: 2) {
                color = .blue
            }
            .gesture (
                DragGesture()
                    .onChanged { value in
                        offset = value.translation
                    }
            )
    }
}

#Preview {
    GesturesPractices()
}
