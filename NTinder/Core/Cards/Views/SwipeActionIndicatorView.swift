//
//  SwipeActionIndicatorView.swift
//  Tinder Clone Again!
//
//  Created by Rakibur Khan on 03/11/2024.
//

import SwiftUI

struct SwipeActionIndicatorView: View {
    @Binding var xOffset: CGFloat
    
    var body: some View {
        HStack {
            Text("Like")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.green)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.green, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(-45))
                .opacity(Double(xOffset / SizeConstants.screenCutoff))
            
            Spacer()
            
            Text("Nope")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.red, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(45))
                .opacity(Double(xOffset / SizeConstants.screenCutoff) * (-1))
        }
        .padding(40)
    }
}

#Preview {
    SwipeActionIndicatorView(xOffset: .constant(-20))
}
