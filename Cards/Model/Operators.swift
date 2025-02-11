//
//  Operators.swift
//  Cards
//
//  Created by M1_Tugo on 2/11/25.
//

import SwiftUI

func + (left: CGSize, right: CGSize) -> CGSize {
    CGSize(
        width: left.width + right.width,
        height: left.height + right.height)
}
