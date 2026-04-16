//
//  ContexMenuPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 10.03.2026.
//

import SwiftUI

struct ContextMenuPractice: View {
    
    @State var backgroundColor: Color = Color("ContextMenuColor")
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }

            Button {
                backgroundColor = .red
            } label: {
                Text("Report posr")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }


        }
    }
}

struct ContextMenuPractice_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuPractice()
    }
}
