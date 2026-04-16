//
//  TogglePractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 10.03.2026.
//

import SwiftUI

struct TogglePractice: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn) {
                Text("Change status")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct TogglePractice_Previews: PreviewProvider {
    static var previews: some View {
        TogglePractice()
    }
}
