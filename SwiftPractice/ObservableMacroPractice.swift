//
//  ObservableMacroPractice.swift
//  SwiftPractice
//
//  Created by User on 03.04.2026.
//

import SwiftUI

@Observable class ObservableViewModel {
    var title: String = "Hello, World!"
}

struct ObservableMacroPractice: View {
    
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "new title!"
            }
            
            SomeChildView(viewModel: viewModel)
            
            SomeThirdView()
                .environment(viewModel)
        }
        
    }
}

struct SomeChildView: View {
    
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Hi Nick!"
        }
    }
}

struct SomeThirdView: View {
    
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Hi Bob!"
        }
    }
}

#Preview {
    ObservableMacroPractice()
}
