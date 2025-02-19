//
//  PickersPractice.swift
//  Notes
//
//  Created by Bryan Alexander Guapacha Florez on 12/02/25.
//

import SwiftUI

struct PickersPractice: View {
    
    @State var date: Date = Date()
    @State var category: Int = 0
    @State var size: NCardType = .small
    
    var body: some View {
//        DatePicker("date", selection: $date, displayedComponents: [.hourAndMinute])
//            .datePickerStyle(.wheel)
//            .padding()
        
//        Picker("Categories", selection: $category) {
//            Text("1").tag(0)
//            Text("2").tag(1)
//            Text("3").tag(2)
//        }
//        .pickerStyle(SegmentedPickerStyle())
        
        Picker("Tamaños", selection: $size) {
            Label("Pequeño", systemImage: "square.and.arrow.up").tag(NCardType.small)
            Label("Mediano", systemImage: "airtag").tag(NCardType.medium)

        }
    }
}

#Preview {
    PickersPractice()
}
