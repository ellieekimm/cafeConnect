//
//  RaceView.swift
//  cafeConnect
//
//  Created by Saishreeya Kantamsetty on 2/24/24.
//

import SwiftUI
import Charts

struct RaceView: View {
    @Binding var card: CompanyCard
    var body: some View {
        
        Chart {
            ForEach(Array(card.demographics.keys), id: \.self) { item in
                SectorMark(angle: .value("percentage", card.demographics[item]!))
                    .foregroundStyle(by: .value("race", item))
            }
        }
    }
}


#Preview {
    RaceView(card: .constant(CompanyCard(name: "Quorvo", videoName: "QuorvoVideo", currentPostings: ["Software Engineer" : "job descriptiont for software engineer", "Sales Specialist Inter": "sales speicalist job description", "Marketing Intern": "markeing intern job description"], malePercent: 71, femPercent: 29, demographics: ["White": 54, "Latino": 17, "Asian": 14], deiGoals: "When varied backgrounds, experiences and ideas converge, great things are bound to happen. We truly believe that each person brings unique perspectives that help expand our thoughts and broaden our reach. This is why we are committed to ensuring that at Qorvo everyone is equally championed, valued, included, and understood.")))
}
