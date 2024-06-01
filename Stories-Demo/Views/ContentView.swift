//
//  MainView.swift
//  Stories-Demo
//
//  Created by Sergey Kemenov on 01.06.2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Constants
    let stories = StoryModel.mockData

    // MARK: - View
    var body: some View {
        ZStack(alignment: .topTrailing) {
            StoriesView(stories: stories)

            CloseButtonView {
                print("close story") // FIXME: - change this later
            }
            .padding(.top, AppSizes.Spacing.Custom.closeButton)
            .padding(.trailing, AppSizes.Spacing.small)
        }
    }
}

#Preview {
    ContentView()
}
