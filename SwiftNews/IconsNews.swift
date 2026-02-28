//
//  IconsNews.swift
//  SwiftNews
//
//  Created by Влад Надаховский on 28.02.2026.
//

import SwiftUI

struct IconsNews: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            //.font(.largeTitle)
            //.resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            //.scaledToFill()
            //.font(.caption)
            .font(.system(size: 200))
            //.foregroundColor(Color.red)
            //.frame(width: 300, height: 300)
            //.clipped()
    }
}

struct IconsNews_Previews: PreviewProvider {
    static var previews: some View {
        IconsNews()
    }
}
