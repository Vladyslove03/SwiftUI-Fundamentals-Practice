//
//  TextNews.swift
//  SwiftNews
//
//  Created by Влад Надаховский on 27.02.2026.
//

import SwiftUI

struct TextPractice: View {
    var body: some View {
        Text("Hello, World! This is Swiftful. I am really enjoying this course.")
//            .font(.caption)
//            .bold()
//            .underline()
//            .italic()
//            .strikethrough()
//            .font(.system(size: 24, weight: .semibold, design: .serif))
            //.kerning(1.0)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
    }
}

struct TextNews_Previews: PreviewProvider {
    static var previews: some View {
        TextPractice()
    }
}
