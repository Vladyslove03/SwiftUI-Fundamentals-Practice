//
//  ActionSheetPractice.swift
//  SwiftPractice
//
//  Created by Влад Надаховский on 10.03.2026.
//

import SwiftUI

struct ActionSheetPractice: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .confirmationDialog(
            "This is the title!",
            isPresented: $showActionSheet,
            titleVisibility: .visible
        ) {
            getButtons()
        }
    message: {
        Text("This is the message.")
    }
    }
    @ViewBuilder
    func getButtons() -> some View {
        Button("Share") {
            
        }
        Button("Report", role: .destructive) {
            
        }
        if actionSheetOption == .isMyPost {
            Button("Delete", role: .destructive) {
                
            }
        }
        Button("Cancel", role: .cancel) {
            
        }
    }
}


struct ActionSheetPractice_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetPractice()
    }
}
