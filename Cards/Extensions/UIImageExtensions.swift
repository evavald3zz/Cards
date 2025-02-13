//
//  UIImageExtensions.swift
//  Cards
//
//  Created by M1_Tugo on 2/12/25.
//

import SwiftUI

extension UIImage: Transferable {
    public static var transferRepresentation: some TransferRepresentation {
        DataRepresentation(importedContentType: .image) { image in
            UIImage(data: image) ?? errorImage
        }
    }
    public static var errorImage: UIImage {
        UIImage(named: "error-image") ?? UIImage()
    }
}
