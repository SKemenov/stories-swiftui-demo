//
//  StoryView.swift
//  Stories-Demo
//
//  Created by Sergey Kemenov on 30.05.2024.
//

import SwiftUI

struct SingleStoryView: View {
    // MARK: - Constants
    let model: StoryModel

    private enum LineLimits {
        static let title = 2
        static let description = 3
    }

    // MARK: - View
    var body: some View {
        // Custom background for each story. Change for image, video, etc.
        model.backgroundColor
            .ignoresSafeArea()
            .overlay {
                VStack(alignment: .leading, spacing: AppSizes.Spacing.medium) {
                    Spacer()

                    Text(model.title)
                        .font(AppFonts.Bold.title)
                        .lineLimit(LineLimits.title)

                    Text(model.description)
                        .font(AppFonts.Regular.paragraph)
                        .lineLimit(LineLimits.description)
                }
                .foregroundStyle(AppColors.Universal.white)
                .padding(.horizontal, AppSizes.Spacing.medium)
                .padding(.bottom, AppSizes.Spacing.xxxLarge)
            }
    }
}

#Preview {
    SingleStoryView(model: StoryModel.mockData[0])
}
