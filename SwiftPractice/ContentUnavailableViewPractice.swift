//
//  ContentUnavailableViewPractice.swift
//  SwiftPractice
//
//  Created by User on 03.04.2026.
//

import SwiftUI

struct ContentUnavailableViewPractice: View {
    var body: some View {
        ContentUnavailableView(
            "No Internet Connection",
            systemImage: "wifi.slash",
            description: Text("Please connect to internet and try again."))
    }
}

#Preview {
    ContentUnavailableViewPractice()
}
