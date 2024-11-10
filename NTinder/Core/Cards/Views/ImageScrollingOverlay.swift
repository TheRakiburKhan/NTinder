//
//  ImageScrollingOverlay.swift
//  Tinder Clone Again!
//
//  Created by Rakibur Khan on 10/11/2024.
//

import SwiftUI

struct ImageScrollingOverlay: View {
    @Binding var currentImageIndex: Int
    let totalImage: Int
    
    var body: some View {
        HStack {
            Rectangle()
                .onTapGesture {
                    updateImageIndex(increment: false)
                }
            
            Rectangle()
                .onTapGesture {
                    updateImageIndex(increment: true)
                }
        }
        .foregroundStyle(.black.opacity(0.01))
    }
}

private extension ImageScrollingOverlay {
    func updateImageIndex(increment: Bool){
        if increment {
            guard currentImageIndex < (totalImage - 1) else {return}
            
            currentImageIndex += 1
        } else {
            guard currentImageIndex > 0 else {return}
            
            currentImageIndex -= 1
        }
    }
}

#Preview {
    ImageScrollingOverlay(currentImageIndex: .constant(0), totalImage: 2)
}
