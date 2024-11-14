//
//  CardStackView.swift
//  NTinder
//
//  Created by Rakibur Khan on 14/11/2024.
//

import SwiftUI

struct CardStackView: View {
    var body: some View {
        ZStack {
            ForEach(0..<10) { card in
                CardView()
            }
        }
    }
}

#Preview {
    CardStackView()
}
