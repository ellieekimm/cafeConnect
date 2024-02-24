//
//  likedYouAudio.swift
//  cafeConnect
//
//  Created by Ellie Kim on 2/24/24.
//

import SwiftUI

struct likedYouAudio: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Liked You")
                .font(.subheadline)
                .italic()
                .padding(.bottom, 10)
            Image(systemName: "waveform")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 80)
                .padding(.bottom, 20)
        }
        .padding([.leading, .trailing], 10)
        .padding([.top, .bottom], 10)
        .background(Color.gray)
        .cornerRadius(15)
    }
}

#Preview {
    likedYouAudio()
}
