//
//  GridPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 04.03.2026.
//

import SwiftUI

struct GridPractice: View {
    
    let colums: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: colums,
                alignment: .center ,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Secction 1")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.blue)
                                .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                                Text("Secction 2")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.red)
                                .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                        }
                    }
                })
        }
        
    }
}


struct GridPractice_Previews: PreviewProvider {
    static var previews: some View {
        GridPractice()
    }
}
