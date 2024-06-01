//
//  AppSizes.swift
//  Stories-Demo
//
//  Created by Sergey Kemenov on 01.06.2024.
//

import Foundation

enum AppSizes {
    /// CGFloat sizes for corner's radiuses
    enum CornerRadius {
        /// CGFloat 3.0
        static let xSmall: CGFloat = 3.0
    }

    /// CGFloat sizes for Heights
    enum Height {
        /// CGFloat 6.0
        static let progressBar: CGFloat = 6.0
    }

    /// CGFloat sizes for icon's width & height
    enum Icon {
        /// CGFloat 30.0
        static let medium: CGFloat = 30.0
    }

    /// CGFloat sizes for Spacing & Padding
    enum Spacing {
        /// CGFloat 6.0
        static let xxSmall: CGFloat = 6.0
        /// CGFloat 12.0
        static let small: CGFloat = 12.0
        /// CGFloat 16.0
        static let medium: CGFloat = 16.0
        /// CGFloat 28.0
        static let xxLarge: CGFloat = 28.0
        /// CGFloat 40.0
        static let xxxLarge: CGFloat = 40.0
        /// Specific  spacing
        enum Custom {
            /// CGFloat 57.0
            static let closeButton: CGFloat = 57.0
        }
    }
}
