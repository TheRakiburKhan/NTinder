//
//  SwipingView.swift
//  Tinder Clone Again!
//
//  Created by Rakibur Khan on 30/10/2024.
//

import SwiftUI

struct SwipingView: View {
    var body: some View {
        VStack {
            HStack {
                Label {
                    Text("NTinder")
                } icon: {
                    Image(systemName: "flame.fill")
                }
                .font(.title)
                
                Spacer()
            }
            .padding()
            
            CardStackView()
            
            Spacer()
        }
    }
}

#Preview {
    SwipingView()
}
