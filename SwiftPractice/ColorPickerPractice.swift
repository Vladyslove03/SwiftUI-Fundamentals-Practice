//
//  ColorPickerPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 10.03.2026.
//

import SwiftUI

struct ColorPickerPractice: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor
            .ignoresSafeArea()
            
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.headline)
                .padding(50)
        }
    }
}

struct ColorPickerPractice_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerPractice()
    }
}
