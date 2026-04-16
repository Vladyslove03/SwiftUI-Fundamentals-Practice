//
//  AsyncImagePractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 23.03.2026.
//

import SwiftUI

struct AsyncImagePractice: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnImage) :
                returnImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
//        AsyncImage(url: url, content: { returnImage in
//            returnImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//        }, placeholder: {
//            ProgressView()
//        })
//            .frame(width: 100, height: 100)
    }
}

struct AsyncImagePractice_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImagePractice()
    }
}
