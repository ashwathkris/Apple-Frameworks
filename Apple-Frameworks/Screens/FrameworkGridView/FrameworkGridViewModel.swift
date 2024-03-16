//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Ashwath Krishnan on 3/15/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    @Published var isShowingDetailView = false
}
