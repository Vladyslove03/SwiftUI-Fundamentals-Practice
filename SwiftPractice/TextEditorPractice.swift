//
//  TextEditorPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 10.03.2026.
//

import SwiftUI

struct TextEditorPractice: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    //.foregroundColor(.red)
                    //.background(.orange)
                    .colorMultiply(Color.red)
                    .cornerRadius(10)
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Text(savedText)
                
                Spacer()

            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor Practice!")
        }
    }
}

struct TextEditorPractice_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorPractice()
    }
}
