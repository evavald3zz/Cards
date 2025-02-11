//
//  Transform.swift
//  Cards
//
//  Created by M1_Tugo on 2/11/25.
//

import SwiftUI

struct Transform {
    var size = CGSize(
     width: Settings.defaultElementSize.width,
     height: Settings.defaultElementSize.height)
    var rotation: Angle = .zero
    var offset: CGSize = .zero
}
