//
//  SpacerNews.swift
//  SwiftNews
//
//  Created by Влад Надаховский on 03.03.2026.
//

import SwiftUI

struct SpacerNews: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                    
                Image(systemName: "gear")
            }
            .font(.title)
            //.background(Color.gray)
            .padding(.horizontal)
            
            Spacer()
               
            Rectangle()
                .frame(height: 55)
        }
        //.background(Color.blue)
    }
}

struct SpacerNews_Previews: PreviewProvider {
    static var previews: some View {
        SpacerNews()
    }
}
