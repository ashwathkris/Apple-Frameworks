//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Ashwath Krishnan on 3/15/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        
        VStack{
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding(10)
        }
        Spacer()
        Button {
            isShowingSafariView = true
        } label: {
            AFButton(title: "Learn More")
        }
        //fullScreenCover instead of sheet
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
        Spacer()
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks[0], isShowingDetailView: .constant(false))
}
