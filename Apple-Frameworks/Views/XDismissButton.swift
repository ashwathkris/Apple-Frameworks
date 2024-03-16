//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Ashwath Krishnan on 3/15/24.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView : Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))     //black in light mode an white in dark mode
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }.padding()

    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
