//
//  SingleCardView.swift
//  Cards
//
//  Created by M1_Tugo on 2/6/25.
//

import SwiftUI

struct SingleCardView: View {
    @State private var currentModal: ToolbarSelection?
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            Color.yellow
                .sheet(item: $currentModal) { item in
                    switch item {
                    default:
                        Text(String(describing: item))
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        BottomToolbar(modal: $currentModal)
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Done") {
                            dismiss()
                            
                                }
                            }
                        }
                    }
                }
            
    struct SingleCardView_Previews: PreviewProvider {
        static var previews: some View {
            SingleCardView()
                .padding()
        }
    }
}
