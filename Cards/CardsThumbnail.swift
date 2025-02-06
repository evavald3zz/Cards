//
//  CardsThumbnail.swift
//  Cards
//
//  Created by M1_Tugo on 2/5/25.
//

import SwiftUI

struct CardThumbnail: View {
    func onTapGesture() {
     isPresented = true
    }
    @State private var isPresented = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.gray)
            .frame(width: 150, height: 250)
            .onTapGesture {
                isPresented = true
            }
    }
    }

