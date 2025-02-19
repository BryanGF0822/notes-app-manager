//
//  TogglePractice.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 17/02/25.
//

import SwiftUI

struct TogglePractice: View {
    @State var age2: Double = 50
    @State var isAdult2: Bool = false
    
    @State var age: Double = 0
    @State var isAdult: Bool = false
    
    var body: some View {
        
        VStack {
            Text("Eres mayor de edad?")
            Toggle("Is adult?", isOn: $isAdult2)
            Text("Age: \(age2.formatted(.number))")
            Slider(value: $age2, in: 1...100, step: 1)
                
        }
        .padding()
        .onChange(of: isAdult2) { newValue in
            if newValue == true{
                age2 = 18
            } else {
                age2 = 15
            }
        }
        
        VStack {
            Text("Age: \(age.formatted(.number))")
            Slider(value: $age, in: 1...100, step: 1)
            
            Toggle("Is adult?", isOn: $isAdult)
        }
        .padding()
        .onChange(of: age) { newValue in
            if newValue >= 18 {
                // Activar el toggle
                isAdult = true
            } else {
                // Desactivar el toggle
                isAdult = false
            }
        }
    }
}

#Preview {
    TogglePractice()
}
