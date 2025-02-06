//
//  BottomToolbar.swift
//  Cards
//
//  Created by M1_Tugo on 2/10/25.
//

import SwiftUI

struct ToolbarButton: View {
    let modal: ToolbarSelection
    private let modalButton: [
        ToolbarSelection: (text: String, imageName: String)
    ] = [
        .photoModal: ("Photos", "photo"),
        .frameModal: ("Frames", "square.on.circle"),
        .stickerModal: ("Stickers", "heart.circle"),
        .textModal: ("Text", "textformat")
    ]
    var body: some View {
        HStack {
            ForEach(ToolbarSelection.allCases, id: \.self) { selection in
                Button {
                    modal = selection
                } label: {
                    ToolbarButton(modal: selection)
                }
            }
        }
    struct BottomToolbar: View {
        @Binding var modal: ToolbarSelection?
        var body: some View {
            HStack {
                Button {
                    modal = .stickerModal
                } label: {
                    ToolbarButton()
                }
            }
        }
        
        struct BottomToolbar_Previews: PreviewProvider {
            static var previews: some View {
                BottomToolbar(modal: .constant(.stickerModal))
                    .padding()
            }
        }
    }
}
