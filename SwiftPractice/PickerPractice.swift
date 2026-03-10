//
//  PickerPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 10.03.2026.
//

import SwiftUI

struct PickerPractice: View {
    
    @State var selection: String = "Most Recent"
    let filterOption: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        
        Picker(
            selection: $selection) {
                ForEach(filterOption.indices) { index in
                    Text(filterOption[index])
                        .tag(filterOption[index])
                }
            } label: {
                Text("Picer")
            }
            .pickerStyle(SegmentedPickerStyle())
            //.background(Color.red)
        
//        List {
//            Picker(
//                selection: $selection) {
//                    ForEach(filterOption, id: \.self) { option in
//                        HStack {
//                            Image(systemName: "heart.fill")
//                            Text(option)
//                                .tag(option)
//                        }
//                    }
//
//
//                } label: {
//                    HStack {
//                        Text("Filter:")
//                        Text(selection)
//                    }
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .padding()
//                    .padding(.horizontal)
//                    .background(Color.blue)
//                    .cornerRadius(10)
//                    .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
//                }
//                .pickerStyle(.inline)
//        }

        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//
//            Picker(
//                selection: $selection) {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                    }
//                } label: {
//                    Text("Picker")
//            }
//                .pickerStyle(WheelPickerStyle())
//                //.background(Color.gray.opacity(0.3))
//        }

    }
}

struct PickerPractice_Previews: PreviewProvider {
    static var previews: some View {
        PickerPractice()
    }
}
