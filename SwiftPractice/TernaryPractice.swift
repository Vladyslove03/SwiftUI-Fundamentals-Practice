//
//  TernaryPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 06.03.2026.
//

import SwiftUI

struct TernaryPractice: View {
    
    @State var isStartingStage: Bool = false
    
    var body: some View {
        VStack {
            Button("Button:\(isStartingStage.description)") {
                isStartingStage.toggle()
            }
            
            Text(isStartingStage ? "Starting state!!!" : "Ending state!!!")
           
            RoundedRectangle(cornerRadius: isStartingStage ? 25 : 0)
                .fill(isStartingStage ? Color.red : Color.blue)
                    .frame(
                        width: isStartingStage ? 200 : 50,
                        height: isStartingStage ? 100 : 25)
           
            Spacer()
        }
    }
}

struct TernaryPractice_Previews: PreviewProvider {
    static var previews: some View {
        TernaryPractice()
    }
}
