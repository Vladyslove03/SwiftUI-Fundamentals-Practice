//
//  ButtonStylesPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 23.03.2026.
//

import SwiftUI

struct ButtonStylesPractice: View {
    var body: some View {
        VStack {
            
            Button {
                
            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 50))
            .controlSize(.large)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
          //  .buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
        //    .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
          //  .buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
            
        }
        .padding()
    }
}

struct ButtonStylesPractice_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesPractice()
    }
}
