//
//  CompanyCardView.swift
//  cafeConnect
//
//  Created by Saishreeya Kantamsetty on 2/24/24.
//

import SwiftUI

struct CompanyCardView: View {
    @Binding var card: CompanyCard
    
    var body: some View {
        VStack(alignment: .leading){
            Text(card.name)
                .font(.title)
                .fontWeight(.bold)
            VStack(){
                VStack{
                    Image(systemName: "play.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 100)
                }
                .padding([.leading, .trailing], 120)
                .padding([.top, .bottom], 30)
                .background(Color.gray)
                .cornerRadius(15)
                
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Current Postings:")
                        .font(.headline)
                    HStack {
                        VStack (alignment: .leading, spacing: 10) {
                            ForEach(card.currentPostings, id: \.self) { item in
                                PostingView(item: item)
                                    
                            }
                        }
                        Spacer()
                    }
                    
                    
                }
                .padding()
                .background(Color.gray)
                .cornerRadius(15)
                
            }
        }
    }
}

#Preview {
    CompanyCardView(card: .constant(CompanyCard(name: "Quorvo", videoName: "QuorvoVideo", currentPostings: ["Software Engineer", "Sales Specialist Inter", "Marketing Inter"], malePercent: 71, femPercent: 29, demographics: ["White": 54, "Latino": 17, "Asian": 14], deiGoals: ["When varied backgrounds, experiences and ideas converge, great things are bound to happen. We truly believe that each person brings unique perspectives that help expand our thoughts and broaden our reach. This is why we are committed to ensuring that at Qorvo everyone is equally championed, valued, included, and understood."])))
}
