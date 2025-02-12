//
//  ColorExtensions.swift
//  Cards
//
//  Created by M1_Tugo on 2/11/25.
//

import SwiftUI

extension Color {
    static let colors: [Color] = [
        .green, .red, .blue, .gray, .yellow, .pink, .orange, .purple
    ]
    static func random() -> Color {
        colors.randomElement() ?? .black
    }
}
