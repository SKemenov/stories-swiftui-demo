//
//  CloseButtonView.swift
//  Stories-Demo
//
//  Created by Sergey Kemenov on 30.05.2024.
//

import SwiftUI

struct CloseButtonView: View {
    // MARK: - Constants
    let action: () -> Void

    // MARK: - View
    var body: some View {
        Button{
            action()
        } label: {
            Image(systemName: "xmark.circle.fill")
                .resizable()
                .frame(width: AppSizes.Icon.medium, height: AppSizes.Icon.medium)
                .foregroundStyle(AppColors.Universal.black)
        }
    }
}

#Preview {
    CloseButtonView(action: { print("button")} )
}
