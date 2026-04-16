//
//  ModelPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 17.03.2026.
//

import SwiftUI


struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followeCount: Int
    let isVerifier: Bool
}

struct ModelPractice: View {
    
    @State var users: [UserModel] = [
//    "Nick", "Emily", "Samanta", "Chris"
        UserModel(displayName: "Nick", userName: "nick123", followeCount: 100, isVerifier: true),
        UserModel(displayName: "Emily", userName: "itsemily2000", followeCount: 66, isVerifier: false),
        UserModel(displayName: "Samanta", userName: "ninja", followeCount: 256, isVerifier: false),
        UserModel(displayName: "Chris", userName: "sunoftheforest", followeCount: 88, isVerifier: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerifier {
                            
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                                .padding()
                        }
                        
                        VStack(alignment: .trailing) {
                            Text("\(user.followeCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                            font(.caption)
                        }
                        
                    }
                    .padding(.vertical, 10.0)
                }

            }
            .listStyle(.insetGrouped)
            .navigationTitle("Users")
        }
    }
}

struct ModelPractice_Previews: PreviewProvider {
    static var previews: some View {
        ModelPractice()
    }
}
