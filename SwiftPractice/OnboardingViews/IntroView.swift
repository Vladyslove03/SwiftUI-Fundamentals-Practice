//
//  IntroView.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 20.03.2026.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
   
    var body: some View {
        ZStack {
            //background
            RadialGradient(
                gradient: Gradient(colors: [Color("CustomColor"), Color("CustomColor2") ]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
            
            // if user is signed in
            // profile viev
            // else
            // onboarding view
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
