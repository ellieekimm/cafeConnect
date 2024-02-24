//
//  audioView.swift
//  cafeConnect
//
//  Created by Ellie Kim on 2/24/24.
//

import SwiftUI

struct audioView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Likes You")
                .font(.title)
                .fontWeight(.bold)
            VStack(alignment: .leading){
                VStack{
                    Image(systemName: "waveform")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 320, height: 200)
                        .padding(.bottom, 20)
                    HStack {
                        Image(systemName: "pause")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 50)
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 50)
                    }
                }
                .padding(20)
                .background(Color.gray)
                .cornerRadius(15)
                .padding(.bottom, 20)
                Text("Up next")
                    .font(.title)
                    .fontWeight(.bold)
                HStack(){
                    Spacer()
                    likedYouAudio()
                    Spacer()
                    likedYouAudio()
                    Spacer()
                }
                HStack {
                    Spacer()
                    likedYouAudio()
                    Spacer()
                    likedYouAudio()
                    Spacer()
                }
                
            }
        }
        .padding(.leading, 20)

    }
}

#Preview {
    audioView()
}
