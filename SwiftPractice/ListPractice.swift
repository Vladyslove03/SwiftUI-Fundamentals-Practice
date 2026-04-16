//
//  ListPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 09.03.2026.
//

import SwiftUI

struct ListPractice: View {
    
    @State var fruits: [String] = [
        "Apple", "Orange", "Banana", "Peach"
    ]
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                        //.padding(.vertical)
                ) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.white)
                                //.frame(maxWidth: .infinity, maxHeight: .infinity)
                                //.background(Color.pink)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.pink)
                    }
                Section(
                    header: Text("Veggies")) {
                        ForEach(veggies, id: \.self) { veggies in
                            Text(veggies.capitalized)
                        }
                }
            }
            .tint(.purple)
            //.listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocer List")
            .toolbar {
                ToolbarItem(
                    placement: .navigationBarLeading) {
                        EditButton()
                    }
                ToolbarItem(placement: .navigationBarTrailing) {
                    addButton
                }
            }
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
    
}

struct ListPractice_Previews: PreviewProvider {
    static var previews: some View {
        ListPractice()
    }
}
