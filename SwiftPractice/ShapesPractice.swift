//
//  ShapesNews.swift
//  SwiftNews
//
//  Created by Влад Надаховский on 27.02.2026.
//

import SwiftUI

struct ShapesPractice: View {
    var body: some View {
        //Capsule(style: .circular)
        //Ellipse()
        //Circle()
        //Rectangle()
        RoundedRectangle(cornerRadius: 10)
           //.fill(Color.blue)
           //.foregroundColor(.pink)
           //.stroke()
            //.stroke(Color.red)
            //.stroke(Color.blue, lineWidth: 30)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            //.trim(from: 0.5, to: 1.0)
            //.stroke(Color.red, lineWidth: 50.0)
            .frame(width: 200, height: 100)
    }
}

struct ShapesNews_Previews: PreviewProvider {
    static var previews: some View {
        ShapesPractice()
    }
}
