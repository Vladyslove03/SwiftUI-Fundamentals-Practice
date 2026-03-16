//
//  IfLetGuardPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 16.03.2026.
//

import SwiftUI

struct IfLetGuardPractice: View {
    
    @State var currentUserID: String? = "testuser123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                
                if let text = displayText {
                Text(text)
                    .font(.title)
                }
                
//                Text(displayText!)
//                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                    
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
        }
        
        
        } else {
            displayText = "Error. There is no User ID"
        }
    }
    
    func loadData2() {
        
        guard let userID = currentUserID else {
            displayText = "Error. There is no User ID"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
    }
    }
}

struct IfLetGuardPractice_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardPractice()
    }
}
