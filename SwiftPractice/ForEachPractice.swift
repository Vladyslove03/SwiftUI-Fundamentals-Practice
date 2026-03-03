//
//  ForEachPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 03.03.2026.
//

import SwiftUI

struct ForEachPractice: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct ForEachPractice_Previews: PreviewProvider {
    static var previews: some View {
        ForEachPractice()
    }
}
