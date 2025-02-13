//
//  CardStore.swift
//  Cards
//
//  Created by M1_Tugo on 2/11/25.
//

import SwiftUI

class CardStore: ObservableObject {
    @Published var cards: [Card] = []
    @Published var selectedElement: CardElement?
    
    init(defaultData: Bool = false) {
        if defaultData {
            cards = initialCards
        }
    }
    func index(for card: Card) -> Int? {
        cards.firstIndex { $0.id == card.id }
    }
    func remove(_ card: Card) {
        if let index = index(for: card) {
            cards.remove(at: index)
        }
    }
}
