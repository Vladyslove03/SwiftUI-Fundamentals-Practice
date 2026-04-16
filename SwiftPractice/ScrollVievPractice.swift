//
//  ScrollVievPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 03.03.2026.
//

import SwiftUI

struct ScrollVievPractice: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false,
                        content: {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                            
                        }
                    })
                    
                }
            }
        }
    }
}

struct ScrollVievPractice_Previews: PreviewProvider {
    static var previews: some View {
        ScrollVievPractice()
    }
}
