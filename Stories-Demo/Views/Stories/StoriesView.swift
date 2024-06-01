//
//  StoriesView.swift
//  Stories-Demo
//
//  Created by Sergey Kemenov on 31.05.2024.
//

import SwiftUI
import Combine

struct StoriesView: View {
    // MARK: - Constants
    let stories: [StoryModel]
    private let almostZero = 0.01

    // MARK: - Properties
    private var timer: TimerConfiguration { .init(storiesCount: stories.count) }
    @State var currentIndex: Int = 0
    @State var currentProgress: CGFloat = 0

    // MARK: - View
    var body: some View {
        ZStack(alignment: .topTrailing) {
            StoriesTabView(stories: stories, currentIndex: $currentIndex)
                .onChange(of: currentIndex) { oldValue, newValue in
                    didChangeIndex(oldIndex: oldValue, newIndex: newValue)
                }

            StoriesProgressBarView(storiesCount: stories.count, timerConfiguration: timer, progress: $currentProgress)
                .onChange(of: currentProgress) { _, newValue in
                    didChangeProgress(newProgress: newValue)
                }
        }
    }
}

// MARK: - Private methods
private extension StoriesView {
    func didChangeIndex(oldIndex: Int, newIndex: Int) {
        let progress = timer.progress(for: newIndex)
        guard oldIndex != newIndex, abs(progress - currentProgress) >= almostZero else { return }
        withAnimation {
            currentProgress = progress
        }
    }

    func didChangeProgress(newProgress: CGFloat) {
        let index = timer.index(for: newProgress)
        guard index != currentIndex else { return }
        withAnimation {
            currentIndex = index
        }
    }
}

#Preview {
    StoriesView(stories: StoryModel.mockData)
}
