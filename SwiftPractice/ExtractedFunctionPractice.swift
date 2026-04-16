//
//  ExtractedFunctionPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 05.03.2026.
//

import SwiftUI

struct ExtractedFunctionPractice: View {
    
    @State var backgoundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            //background
            backgoundColor
                .ignoresSafeArea(edges: .all)
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button {
                buttonPressed()
            } label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }

        }
    }
    
    func buttonPressed() {
        backgoundColor = .yellow
    }
}

struct ExtractedFunctionPractice_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionPractice()
    }
}
