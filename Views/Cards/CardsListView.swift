//
//  SwiftUIView.swift
//  Cards
//
//  Created by M1_Tugo on 2/5/25.
//

import SwiftUI

struct CardsListView: View {
    @State private var isPresented = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(0..<10) { _ in
                    CardThumbnail()
                        .onTapGesture {
                            isPresented = true
                        }
                }
                .fullScreenCover(isPresented: $isPresented) {
                    SingleCardView()
                }
                
            }
        }
    }
    struct CardsListView_Previews: PreviewProvider {
        static var previews: some View {
            CardsListView()
        }
    }
    
}
