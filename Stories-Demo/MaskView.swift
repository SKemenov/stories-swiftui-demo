//
//  MaskView.swift
//  Stories-Demo
//
//  Created by Sergey Kemenov on 30.05.2024.
//

import SwiftUI

struct MaskView: View {
    let numberOfSections: Int
    var body: some View {
        HStack {
            ForEach(0..<numberOfSections, id: \.self) { _ in
                MaskFragmentView()
            }
        }
    }
}

#Preview {
    Color.purple
        .ignoresSafeArea()
        .overlay(
            MaskView(numberOfSections: 3)
                .padding()
        )
}
