//
//  ViewThatFitsPractice.swift
//  SwiftPractice
//
//  Created by User on 02.04.2026.
//

import SwiftUI

struct ViewThatFitsPractice: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is some text that I would like to display to the user")
                Text("This is some text that I would like to display!")
                Text("This is some text ")
            }
            
        }
        .frame(height: 300)
        .padding(50)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsPractice()
}
