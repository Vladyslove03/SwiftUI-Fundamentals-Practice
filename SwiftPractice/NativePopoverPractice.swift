//
//  NativePopoverPractice.swift
//  SwiftPractice
//
//  Created by User on 02.04.2026.
//

import SwiftUI

struct NativePopoverPractice: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very good 😊",
        "Average 😌",
        "Very bad 😡"
    ]
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button("Provide feedback?") {
                showPopover.toggle()
            }
            .padding(20)
            .background(Color.yellow)
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                ScrollView {
                    VStack(alignment: .leading, spacing: 12) {
                        ForEach(feedbackOptions, id: \.self) { option in
                            Button(option) {
                                
                            }
                            if option != feedbackOptions.last {
                                Divider()
                            }
                            
                        }
                    }
                    .padding(20)
                }
                
                .presentationCompactAdaptation(.popover)
            })
        }
    }
}

#Preview {
    NativePopoverPractice()
}
