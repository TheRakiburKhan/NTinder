//
//  CardView.swift
//  Tinder Clone Again!
//
//  Created by Rakibur Khan on 7/6/24.
//

import SwiftUI

struct CardView: View {
    @State private var xOffset: CGFloat = 0
    @State private var degree: CGFloat = 0
    @State private var currentImageIndex: Int = 0
    
    var userImages: [String] = ["MeganFox-1", "MeganFox-2"]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(userImages[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                    .overlay {
                        ImageScrollingOverlay(currentImageIndex: $currentImageIndex, totalImage: userImages.count)
                    }
                
                CardImageIndicatorView(imageCount: userImages.count, currentImage: currentImageIndex)
                
                SwipeActionIndicatorView(xOffset: $xOffset)
            }
            
            UserInfoView()
        }
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degree))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
    }
}

private extension CardView {
    func swipeRight() {
        xOffset = 200
        degree = 12
    }
    
    func swipeLeft() {
        xOffset = -200
        degree = -12
    }
}

private extension CardView {
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degree = Double(value.translation.width / 25)
    }
    
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) <= abs(SizeConstants.screenCutoff) {
            xOffset = 0
            degree = 0
        }
    }
}

#Preview {
    CardView()
}
