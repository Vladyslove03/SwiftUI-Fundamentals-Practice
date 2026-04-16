//
//  EnviromentObjectPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 19.03.2026.
//

import SwiftUI


class EnvironmentVievModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
    
}

struct EnvironmentObjectPractice: View {
    
    @StateObject var viewModel: EnvironmentVievModel = EnvironmentVievModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailViev(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailViev: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            
            NavigationLink(destination: FinalViev()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
            
        }
    }
    
}

struct FinalViev: View {
    
    @EnvironmentObject var viewModel: EnvironmentVievModel
    
    let color1 = ( #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1) )
    let color2 = ( #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1) )
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color(color1), Color(color2)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20.0) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnviromentObjectPractice_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectPractice()
        //DetailViev(selectedItem: "iPhone")
        //FinalViev()
    }
}
