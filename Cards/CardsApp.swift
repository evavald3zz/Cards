//
//  CardsApp.swift
//  Cards
//
//  Created by M1_Tugo on 2/5/25.
//

import SwiftUI

@main
struct CardsApp: App {
    @StateObject var store = CardStore()
    
    var body: some Scene {
        WindowGroup {
            CardsListView()
                .environmentObject(store)
                .onAppear {
                    print(URL.documentsDirectory)
                }
        }
    }
}
