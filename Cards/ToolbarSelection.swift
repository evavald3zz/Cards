//
//  Toolbar.swift
//  Cards
//
//  Created by M1_Tugo on 2/10/25.
//

import SwiftUI

enum ToolbarSelection: CaseIterable {
    enum ToolbarSelection: CaseIterable, Identifiable {
        var id: Int {
            hashValue
        }
        var id: ObjectIdentifier
        
        enum ToolbarSelection {
            case photoModal, frameModal, stickerModal, textModal
        }
    }
}
