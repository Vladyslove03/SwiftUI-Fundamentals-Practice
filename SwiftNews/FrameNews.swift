//
//  FrameNews.swift
//  SwiftNews
//
//  Created by Влад Надаховский on 28.02.2026.
//

import SwiftUI

struct FrameNews: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

struct FrameNews_Previews: PreviewProvider {
    static var previews: some View {
        FrameNews()
    }
}
