//
//  TimerConfiguration.swift
//  Stories-Demo
//
//  Created by Sergey Kemenov on 30.05.2024.
//

import SwiftUI

struct TimerConfiguration {
    // MARK: - Constants
    let storiesCount: Int
    let timerTickInternal: TimeInterval
    let progressPerTick: CGFloat

    // MARK: - Inits
    init(
        storiesCount: Int,
        secondsPerStory: TimeInterval = 5,
        timerTickInternal: TimeInterval = 0.25
    ) {
        self.storiesCount = storiesCount
        self.timerTickInternal = timerTickInternal
        self.progressPerTick = 1.0 / CGFloat(storiesCount) / secondsPerStory * timerTickInternal
    }

    // MARK: - Methods
    func progress(for storyIndex: Int) -> CGFloat {
        min(CGFloat(storyIndex) / CGFloat(storiesCount), 1)
    }

    func index(for progress: CGFloat) -> Int {
        min(Int(progress * CGFloat(storiesCount)), storiesCount - 1)
    }

    func nextProgress(progress: CGFloat) -> CGFloat {
        min(progress + progressPerTick, 1)
    }
}
