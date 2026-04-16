//
//  GradientsNews.swift
//  SwiftNews
//
//  Created by Влад Надаховский on 27.02.2026.
//

import SwiftUI

struct GradientsPractice: View {
    var color1 = ( #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) )
    var color2 = ( #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1) )
    var body: some View {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
//                    LinearGradient(
//                        colors: [ Color(color1), Color(color2)],
//                        startPoint: .topLeading,
//                        endPoint: .trailing)
//                    RadialGradient(
//                        colors: [Color(color1), Color(color2)],
//                        center: .topLeading,
//                        startRadius: 5,
//                        endRadius: 400)
                    AngularGradient(
                        colors: [Color(color1), Color(color2)],
                        center: .topLeading,
                        angle: .degrees(180+45))
                )
                .frame(width: 300, height: 200)
        }
}

struct GradientsNews_Previews: PreviewProvider {
    static var previews: some View {
        GradientsPractice()
    }
}
