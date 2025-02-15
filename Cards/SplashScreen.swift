//
//  SplashScreen.swift
//  Cards
//
//  Created by M1_Tugo on 2/15/25.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        card(letter: "C", color: "appColor7")
    }
}
func card(letter: String, color: String) -> some View {
    ZStack {
        RoundedRectangle(cornerRadius: 25)
            .shadow(radius: 3)
            .frame(width: 120, height: 160)
            .foregroundColor(.white)
        Text(letter)
            .fontWeight(.bold)
            .scalableText()
            .foregroundColor(Color(color))
            .frame(width: 80)
    }
}
#Preview {
    SplashScreen()
}
