//
//  BackgroundMaterialsPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 23.03.2026.
//

import SwiftUI

struct BackgroundMaterialsPractice: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
            
        }
        .ignoresSafeArea()
        .background(
            Image("cat")
                .resizable()
        )
    }
}

struct BackgroundMaterialsPractice_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsPractice()
    }
}
