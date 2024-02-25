//
//  CompanyPageView.swift
//  cafeConnect
//
//  Created by Saishreeya Kantamsetty on 2/24/24.
//

import SwiftUI
import AVKit
import AVFoundation

struct CompanyPageView: View {
    @State private var cards: [CompanyCard] = CompanyCard.data
    let cardGradient = Gradient(colors: [Color.beige, Color.white])
    
    var body: some View {
        ZStack {
            
            ForEach($cards) { $card in
                CompanyCardView(card: $card)
                    .padding([.horizontal])
                    .padding(.bottom, 20)
    
            }
        }
    }
}

#Preview {
    CompanyPageView()
}
