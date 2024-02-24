//
//  recruiterView.swift
//  cafeConnect
//
//  Created by Ellie Kim on 2/24/24.
//

import SwiftUI

struct recruiterView: View {
    var profileArray: [Profile] = [Profile(audio: "New-Recording-114", name: "Upasana Lamsal", school: "UNC-Chapel Hill", major: "Computer Science and Economics"), Profile(audio: "user-response", name: "Nithya Golla", school: "UNC-Chapel Hill", major: "Communications and Statistics")]

    var body: some View {
        TabView {
            AudioView(profile: Profile(audio: "New-Recording-114", name: "Upasana Lamsal", school: "UNC-Chapel Hill", major: "Computer Science and Economics"))
                .tabItem {
                    Label("Likes", systemImage: "heart.fill")
                }
            Text("Hello World")
                .tabItem {
                    Label("Hi", systemImage: "heart")
                }
        }
    }
}

#Preview {
    recruiterView()
}
