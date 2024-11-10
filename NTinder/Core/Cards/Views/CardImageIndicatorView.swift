//
//  CardImageIndicatorView.swift
//  NTinder
//
//  Created by Rakibur Khan on 10/11/2024.
//

import SwiftUI

struct CardImageIndicatorView: View {
    let imageCount: Int
    let currentImage: Int
    var body: some View {
        HStack {
            ForEach (0 ..< imageCount, id: \.self) { index in
                Capsule()
                    .frame(height: 4)
                    .foregroundStyle( index == currentImage ? Color.white : Color.gray)
            }
        }
        .padding([.top, .horizontal], 8)
    }
}

#Preview {
    CardImageIndicatorView(imageCount: 10, currentImage: 0)
}
