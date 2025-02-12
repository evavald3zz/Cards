//
//  Toolbar.swift
//  Cards
//
//  Created by M1_Tugo on 2/10/25.
//

import Foundation

enum ToolbarSelection: CaseIterable, Identifiable {
  var id: Int {
    hashValue
  }

  case photoModal, frameModal, stickerModal, textModal
}
