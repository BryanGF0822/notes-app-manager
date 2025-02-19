//
//  AnimationsPractice.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 19/02/25.
//

import SwiftUI

struct AnimationsPractice: View {
    
    @State var showGreen: Bool = false
    
    var body: some View {
        VStack{
            // Circulo azul
            Circle()
                .foregroundStyle(.cyan)
                .frame(width: 200, height: 200)
                .onTapGesture {
                    withAnimation {
                        showGreen.toggle()
                    }
                }
            // Circulo verde (visible si showGreen es true)
            if showGreen {
                Circle()
                    .foregroundStyle(.green)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .slide, removal: .scale))
            }
        }
    }
}

#Preview {
    AnimationsPractice()
}
