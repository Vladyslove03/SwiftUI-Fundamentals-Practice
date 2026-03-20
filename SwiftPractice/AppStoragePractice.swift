//
//  AppStoragePractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 20.03.2026.
//

import SwiftUI

struct AppStoragePractice: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20.0) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Emily"
                currentUserName = name
                
            }
        }
        
    }
}

struct AppStoragePractice_Previews: PreviewProvider {
    static var previews: some View {
        AppStoragePractice()
    }
}
