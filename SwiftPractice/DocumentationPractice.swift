//
//  DocumentationPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 14.03.2026.
//

import SwiftUI

struct DocumentationPractice: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    
    
    /*
     Working copy - things to do: 1) Fix title
     1) Fix title
     2) Fix alert
     */
    
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                
                //foreground
                foregroundLayer
                .navigationTitle("Documentation ")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("ALERT") {
                            showAlert.toggle()
                        }
                    }
                }
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the alert!")
            }
            }
        }
    }
    /// This is foreground layer that holds a scrollview.
    private var foregroundLayer: some View {
        ScrollView {
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }
    }
    
    // MARK: FUNCIONS
    
    /// Gets an alert with a specified title.
    ///
    /// This function creates and return an alert immediately. The alert will have a title based on the text parameter but it will NOT have a massege.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi))
    /// ```
    ///
    /// - Warning: There is no additional messege in this Alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

struct DocumentationPractice_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationPractice()
    }
}
