// audioView.swift
// cafeConnect
//
// Created by Ellie Kim on 2/24/24.
//

import SwiftUI
import AVFoundation

struct AudioView: View {
    @State private var buttonPlayed: Bool = false
    @ObservedObject var profile: Profile
    @State private var donePlaying: Bool = false

    var body: some View {
        NavigationView{
            VStack{
                VStack(alignment: .leading) {
                    Text("Likes You")
                        .font(.title)
                        .fontWeight(.bold)
                    audioSoundView(profile: profile)
                    Text("Up next")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.top, 15)
                }
                VStack(alignment: .center) {
                    HStack(spacing: 40) {
                        likedYouAudio()
                        likedYouAudio()
                    }
                    HStack(spacing: 40) {
                        likedYouAudio()
                        likedYouAudio()
                    }
                }
            }
        }
    }
    }
struct audioView_Previews: PreviewProvider {
    static var previews: some View {
        AudioView(profile: Profile(audio: "New-Recording-114", name: "Upasana Lamsal", school: "UNC-Chapel Hill", major: "Computer Science and Economics"))
    }
}
