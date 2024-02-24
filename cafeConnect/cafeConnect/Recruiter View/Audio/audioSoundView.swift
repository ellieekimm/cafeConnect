
// audioView.swift
// cafeConnect
//
// Created by Ellie Kim on 2/24/24.
//

import SwiftUI
import AVFoundation

struct audioSoundView: View {
    @State private var buttonPlayed: Bool = false
    @ObservedObject var profile: Profile
    @State private var donePlaying: Bool = false

    var body: some View {
            VStack(alignment: .leading) {
                VStack {
                    Image(systemName: "waveform")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 320, height: 150)
                        .padding(.bottom, 20)
                    HStack {
                        Button(action: {
                            profile.playSound()
                            buttonPlayed = true
                        }) {
                            if buttonPlayed {
                                Image(systemName: "pause")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 40)
                                    .foregroundColor(Color.black)
                            } else {
                                Image(systemName: "play")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 40)
                                    .foregroundColor(Color.black)
                            }
                        }
                        if !(profile.finishedPlaying) {
                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color.gray)
                                .frame(width: 80, height: 40)
                        } else {
                            NavigationLink {
                                profileView(profile: profile)
                            } label: {
                                Image(systemName: "heart")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 40)
                                    .foregroundColor(Color.red)
                            }
                        }
                    }
                }
                .padding([.top, .bottom], 15)
                .background(Color("audioGray"))
                .cornerRadius(15)
            }
        }
    
}
struct audioSoundViews_Preview: PreviewProvider {
    static var previews: some View {
        audioSoundView(profile: Profile(audio: "New-Recording-114", name: "Upasana Lamsal", school: "UNC-Chapel Hill", major: "Computer Science and Economics"))
    }
}
