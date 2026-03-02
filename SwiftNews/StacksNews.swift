//
//  StacksNews.swift
//  SwiftNews
//
//  Created by Влад Надаховский on 02.03.2026.
//

import SwiftUI

struct StacksNews: View {
    // Vstacks -> Vertical
    // Hstacks -> Horizontal
    // Zstacks -> zIndex (back to front)
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            VStack(alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(Color.pink)
                    .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(Color.purple)
                    .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(Color.blue)
                    .frame(width: 25, height: 25)
                }
                .background(Color.white)
            }
            .background(Color.black)
        }
        
    }
}

struct StacksNews_Previews: PreviewProvider {
    static var previews: some View {
        StacksNews()
    }
}
