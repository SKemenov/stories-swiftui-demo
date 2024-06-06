//
//  StoryView.swift
//  Stories-Demo
//
//  Created by Sergey Kemenov on 30.05.2024.
//

import SwiftUI

struct SingleStoryView: View {
    // MARK: - Constants
    private enum LineLimits {
        static let title = 2
        static let description = 3
    }

    // MARK: - Properties
    var model: Story

    // MARK: - View
    var body: some View {
        AppColors.Universal.black
            .ignoresSafeArea()
            .overlay {
                ZStack {
                    Image(model.imageName)
                        .resizable()
                        .scaledToFill()
                        .clipShape(RoundedRectangle(cornerRadius: AppSizes.CornerRadius.Custom.story))
                        .padding(.top, AppSizes.Spacing.xSmall)
                        .padding(.horizontal, .zero)

                    VStack(alignment: .leading, spacing: AppSizes.Spacing.medium) {
                        Spacer()

                        Text(model.title)
                            .font(AppFonts.Bold.large)
                            .lineLimit(LineLimits.title)

                        Text(model.description)
                            .font(AppFonts.Regular.large)
                            .lineLimit(LineLimits.description)
                    }
                    .foregroundStyle(AppColors.Universal.white)
                    .padding(.horizontal, AppSizes.Spacing.medium)
                    .padding(.bottom, AppSizes.Spacing.Custom.story)
                }
                .padding(.bottom, AppSizes.Spacing.large)
            }
    }
}

#Preview {
    SingleStoryView(model: Story.mockData1[0])
}
