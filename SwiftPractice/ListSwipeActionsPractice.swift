//
//  ListSwipeActions.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 24.03.2026.
//

import SwiftUI

struct ListSwipeActionsPractice: View {
    
    @State var fruits: [String] = [
        "Apple", "Orange", "Banana", "Peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        Button("Junk") {
                            
                        }
                        .tint(.black)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                        
                    }
            }
            //.onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct ListSwipeActions_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsPractice()
    }
}
