//
//  ImageNews.swift
//  SwiftNews
//
//  Created by Влад Надаховский on 28.02.2026.
//

import SwiftUI

struct ImageNews: View {
    var body: some View {
        Image("apple")
            //.renderingMode(.template)
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            //.scaledToFill()
            .frame(width: 300, height: 200)
            .foregroundColor(Color.red)
            //.clipped()
            //.cornerRadius(150)
            //.clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 25)
                //Ellipse()
            //)
    }
}

struct ImageNews_Previews: PreviewProvider {
    static var previews: some View {
        ImageNews()
    }
}
