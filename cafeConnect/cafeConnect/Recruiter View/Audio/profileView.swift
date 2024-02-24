//
//  profileView.swift
//  cafeConnect
//
//  Created by Ellie Kim on 2/24/24.
//

import SwiftUI

struct profileView: View {
    @ObservedObject var profile: Profile

    var body: some View {
        Text(profile.name)
    }
}
