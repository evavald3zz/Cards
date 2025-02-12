//
//  CardStore.swift
//  Cards
//
//  Created by M1_Tugo on 2/11/25.
//

import SwiftUI

class CardStore: ObservableObject {
    @Published var cards: [Card] = []
    
    init(defaultData: Bool = false) {
        if defaultData {
            cards = initialCards
        }
    }
}
