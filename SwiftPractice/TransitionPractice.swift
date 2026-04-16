//
//  TransitionPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 07.03.2026.
//

import SwiftUI

struct TransitionPractice: View {
    
    @State var showViev: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    
                        showViev.toggle()
    
                }
                Spacer()
            }
            if showViev {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity
                    ))
                    .zIndex(1.0)
            }
            
        }
        .ignoresSafeArea(edges: .bottom)
        .animation(.easeInOut, value: showViev)
    }
}

struct TransitionPractice_Previews: PreviewProvider {
    static var previews: some View {
        TransitionPractice()
    }
}

