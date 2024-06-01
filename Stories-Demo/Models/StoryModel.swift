//
//  StoryModel.swift
//  Stories-Demo
//
//  Created by Sergey Kemenov on 30.05.2024.
//

import SwiftUI

// MARK: - Model structure
struct StoryModel: Identifiable {
    let id = UUID()
    let backgroundColor: Color
    let title: String
    let description: String
}

// MARK: - Model mock data
extension StoryModel {
    static let mockData: [StoryModel] = [
        StoryModel(
            backgroundColor: AppColors.Background.story1,
            title: Array(repeating: "title1", count: 10).joined(separator: " "),
            description: Array(repeating: "text1", count: 20).joined(separator: " ")
        ),
        StoryModel(
            backgroundColor: AppColors.Background.story2,
            title: Array(repeating: "title2", count: 10).joined(separator: " "),
            description: Array(repeating: "text2", count: 20).joined(separator: " ")
        ),
        StoryModel(
            backgroundColor: AppColors.Background.story3,
            title: Array(repeating: "title3", count: 10).joined(separator: " "),
            description: Array(repeating: "text3", count: 20).joined(separator: " ")
        )
    ]

}
