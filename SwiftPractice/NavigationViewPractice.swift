//
//  NavigationViewPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 08.03.2026.
//

import SwiftUI

struct NavigationViewPractice: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello, World!", destination: MyOtherScreen())
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                    
                
                
                
                ,
                trailing:
                    NavigationLink(
                    destination: MyOtherScreen(),
                    label: {
                    Image(systemName: "gear")
                })
                    .accentColor(.red)
             )
            }
        
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(edges: .all)
                .navigationTitle("Green Screen")
                //.navigationBarHidden(true)
            
            VStack {
                Button("BACK BUTTON") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here", destination: Text("3rd Screen"))
            }
                
        }
    }
}

struct NavigationViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewPractice()
    }
}

