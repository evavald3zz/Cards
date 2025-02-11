//
//  SwiftUIView.swift
//  Cards
//
//  Created by M1_Tugo on 2/5/25.
//

import SwiftUI

struct CardsListView: View {

    @State private var selectedCard: Card?
    @EnvironmentObject var store: CardStore
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(store.cards) { card in
                    CardThumbnail(card: card)
                        .onTapGesture {
                            selectedCard = card
                        }
                }
                .fullScreenCover(item: $selectedCard) { card in
                    SingleCardView(card: selectedCard)
                }
                
            }
        }
    }
    struct CardsListView_Previews: PreviewProvider {
        static var previews: some View {
            CardsListView()
                .environmentObject(CardStore(defaultData: true))
        }
    }
    
}
