//
//  CompanyPageView.swift
//  cafeConnect
//
//  Created by Saishreeya Kantamsetty on 2/24/24.
//

import SwiftUI

struct CompanyPageView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Quorvo")
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
            }
        }
    }
}

#Preview {
    CompanyPageView()
}
