//
//  TabViewPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 12.03.2026.
//

import SwiftUI

struct TabViewPractice: View {
    
    @State var selectedTab: Int = 0
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(.page)
        
//        TabView(selection: $selectedTab) {
//            HomeView(selectTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
////        .tint(.red)
//        .accentColor(.red)
    }
}

struct TabViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        TabViewPractice()
    }
}

struct HomeView: View {
    
    @Binding var selectTab: Int
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea(edges: .top)
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }
            

        }
    }
}
