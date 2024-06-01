//
//  StoriesTabView.swift
//  Stories-Demo
//
//  Created by Sergey Kemenov on 31.05.2024.
//

import SwiftUI

struct StoriesTabView: View {
    // MARK: - Constants
    let stories: [StoryModel]

    // MARK: - Properties
    @Binding var currentIndex: Int

    // MARK: - View
    var body: some View {
        TabView(selection: $currentIndex) {
            // For TabBar pages .tag() has to be as Int, not UUID
            ForEach(Array(stories.enumerated()), id: \.offset) { index, story in
                SingleStoryView(model: story)
                    .tag(index)
                    .onTapGesture {
                        didTapStory()
                    }
            }
        }
        .ignoresSafeArea()
        .tabViewStyle(.page(indexDisplayMode: .never))
    } 

    // MARK: - Methods
    func didTapStory() {
        currentIndex = min(currentIndex + 1, stories.count - 1)
    }
}

#Preview {
    StoriesTabView(stories: StoryModel.mockData, currentIndex: .constant(0))
}
