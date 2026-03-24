//
//  BadgesPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 24.03.2026.
//

import SwiftUI

// List
// TabView

struct BadgesPractice: View {
    var body: some View {
        List {
            Text("Hello, world!")
                .badge("New ITEMS!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
        }
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(5)
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

struct BadgesPractice_Previews: PreviewProvider {
    static var previews: some View {
        BadgesPractice()
    }
}
