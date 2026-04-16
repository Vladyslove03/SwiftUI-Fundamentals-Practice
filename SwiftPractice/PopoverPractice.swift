//
//  PopoverPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 08.03.2026.
//

import SwiftUI

struct PopoverPractice: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            // METHOD 1 - SHEET
//            .sheet(isPresented: $showScreen) {
//                NewScreen()
            // METHOD 2 - TRANSITION
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                    .transition(.move(edge: .bottom))
//                }
//            }
//            .animation(.spring(), value: showNewScreen)
//            .zIndex(2.0)
            
            //METHOD 3 - ANIMATION OFFSET
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
            
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
        Color.purple
            .ignoresSafeArea(edges: .all)
        
        Button {
            //presentationMode.wrappedValue.dismiss()
            showNewScreen.toggle()
        } label: {
            Image(systemName: "xmark")
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding(20)
        }

        }
    }
}

struct PopoverPractice_Previews: PreviewProvider {
    static var previews: some View {
        PopoverPractice()
        //NewScreen()
    }
}
