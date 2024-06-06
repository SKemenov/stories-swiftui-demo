//
//  MainView.swift
//  Stories-Demo
//
//  Created by Sergey Kemenov on 05.06.2024.
//

import SwiftUI

struct MainView: View {
    // MARK: - Properties
    @State var storiesList = StoriesList.mockData

    // MARK: - View
    var body: some View {
        VStack(spacing: .zero) {
            PreviewStoriesView(storiesList: $storiesList)
            Spacer()
        }
    }
}

#Preview {
    MainView()
}
