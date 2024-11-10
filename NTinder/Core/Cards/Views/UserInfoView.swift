//
//  UserInfoView.swift
//  Tinder Clone Again!
//
//  Created by Rakibur Khan on 03/11/2024.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Megan")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("37")
                    .font(.title)
                
                Spacer()
                
                Button {
                    debugPrint("DEBUG: Show info tapped")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
                
            }
            
            Text("Actress | Witch")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    UserInfoView()
}
