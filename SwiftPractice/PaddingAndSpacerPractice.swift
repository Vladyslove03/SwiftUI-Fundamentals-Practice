//
//  PaddingAndSpaserNews.swift
//  SwiftNews
//
//  Created by Влад Надаховский on 03.03.2026.
//

import SwiftUI

struct PaddingAndSpacerPractice: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we willl do on this screen. It is multiplelines and we will align the text to the leading edge.")
                
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 10)
        )
        .padding(.horizontal, 10)
            
    }
}

struct PaddingAndSpaserNews_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerPractice()
    }
}
