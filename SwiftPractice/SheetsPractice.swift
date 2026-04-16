//
//  SheetsPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 07.03.2026.
//

import SwiftUI

struct SheetsPractice: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(edges: .all)
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet) {
                SecondScreen()
            }

        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea(edges: .all)
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                    
            }
        }
    }
    
}

struct SheetsPractice_Previews: PreviewProvider {
    static var previews: some View {
        SheetsPractice()
       // SecondScreen()
    }
}
