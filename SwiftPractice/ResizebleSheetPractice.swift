//
//  ResizebleSheetPractice.swift
//  SwiftPractice
//
//  Created by User on 01.04.2026.
//

import SwiftUI

struct ResizebleSheetPractice: View {
    
    @State private var showSheet: Bool = false
    @State private var detent: PresentationDetent = .large
    
    var body: some View {
        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detent: $detent)
                
//                .presentationDetents([.height(800)])
//                .presentationDetents([.fraction(0.1), .medium, .large])
//                .presentationDetents([.medium, .large])
//                .interactiveDismissDisabled()
        }
//        .onAppear {
//            showSheet = true
//        }
    }
}

struct MyNextView: View {
    
    @Binding var detent: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack(spacing:20) {
                Button("MEDIUM") {
                    detent = .medium
                }
                
                Button("LARGE") {
                    detent = .large
                }
                
                Button("20%") {
                    detent = .fraction(0.2)
                }
            }
        }
        .presentationDetents([.medium, .large, .fraction(0.2)], selection: $detent)
        
    }
}

#Preview {
    ResizebleSheetPractice()
}
