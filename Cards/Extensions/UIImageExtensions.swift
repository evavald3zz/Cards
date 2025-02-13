//
//  UIImageExtensions.swift
//  Cards
//
//  Created by M1_Tugo on 2/12/25.
//

import SwiftUI
// 1
extension UIImage: Transferable {
    // 2
    public static var transferRepresentation: some
    TransferRepresentation {
        // 3
        DataRepresentation(importedContentType: .image) { image in
            // 4
            UIImage(data: image) ?? errorImage
        }
    }
    public static var errorImage: UIImage {
        UIImage(named: "error-image") ?? UIImage()
    }
}
