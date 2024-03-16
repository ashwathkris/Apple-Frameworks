//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Ashwath Krishnan on 3/15/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6) //The smallest the text can go is 60% of the original size. thats what minimum scale factor does.
        }.padding(20)
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
