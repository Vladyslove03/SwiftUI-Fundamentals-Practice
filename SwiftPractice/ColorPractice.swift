//
//  ColorNews.swift
//  SwiftNews
//
//  Created by Влад Надаховский on 27.02.2026.
//

import SwiftUI

struct ColorPractice: View {
    //var color = ( #colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1) )
    var body: some View {
       
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color(color)
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            //.shadow(color: Color("CustomColor").opacity(0.3) Color, radius: 10, x: -20, y: 20)
    }
}

struct ColorNews_Previews: PreviewProvider {
    static var previews: some View {
        ColorPractice()
            
    }
}
