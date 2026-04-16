//
//  SliderPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 11.03.2026.
//

import SwiftUI

struct SliderPractice: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue)
                //"\(sliderValue)"
            )
                .foregroundColor(color)
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            //Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                label: {
                    Text("Title")
                },
                minimumValueLabel: {
                    Text("1")
                },
                maximumValueLabel: {
                    Text("5")
                },
                onEditingChanged: { _ in
                    color = .green
                })
                .tint(.red)
        }
    }
}

struct SliderPractice_Previews: PreviewProvider {
    static var previews: some View {
        SliderPractice()
    }
}
