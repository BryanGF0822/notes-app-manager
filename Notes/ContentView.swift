//
//  ContentView.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 30/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Nunca pares de aprender")
//            .font(.system(size: 50))
//            .lineLimit(2)
//            .multilineTextAlignment(.trailing)
//            .bold()
//            .underline()
//        
//        Circle()
//            .background(Color.blue)
//            .padding()
//            .background(Color.yellow)
//            .frame(width: 200, height: 200)
//        
//        Rectangle()
//            .frame(width: 200, height: 200)
//            .foregroundStyle(Color.yellow)
//            .cornerRadius(60)
//            .opacity(0.5)
//        
//        Ellipse()
//            .stroke(lineWidth: 5)
//            .frame(width: 200, height: 400)
//            .foregroundStyle(Color.blue)
//            .rotationEffect(.degrees(30))
        
        ScrollView {
            ForEach(0..<5) {index in
                Button("Click here!") {
                    // what the button does
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                .controlSize(.large)
                .buttonBorderShape(.capsule)
                .disabled(false)
            }
        }
        .frame(height:250)
        .background(.brown)
        
        Button("Click here!") {
            // what the button does
        }
        .buttonStyle(.borderedProminent)
        .tint(.red)
        .controlSize(.large)
        .buttonBorderShape(.capsule)
        .disabled(false)
        
//        Button(action: {
//            // What the button does
//        }) {
//            Label("Profile", systemImage: "person.circle")
//        }
//        // All built-in modifiers can be applied in this case
//        .buttonStyle(.borderedProminent)
//        .tint(.gray)
//        .controlSize(.large)
//        .buttonBorderShape(.capsule)
//        .disabled(false)
    }
}

#Preview {
    ContentView()
}
