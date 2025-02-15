//
//  AppLoadingView.swift
//  Cards
//
//  Created by M1_Tugo on 2/15/25.
//

import SwiftUI

struct AppLoadingView: View {
    @State private var showSplash = true
    var body: some View {
        if showSplash {
            SplashScreen()
                .ignoresSafeArea()
        } else {
            CardsListView()
        }
    }
    struct AppLoadingView_Previews: PreviewProvider {
        static var previews: some View {
            AppLoadingView()
                .environmentObject(CardStore(defaultData: true))
        }
    }
}
