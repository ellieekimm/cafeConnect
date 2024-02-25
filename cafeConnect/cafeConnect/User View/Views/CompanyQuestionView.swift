//
//  CompanyQuestionView.swift
//  cafeConnect
//
//  Created by Saishreeya Kantamsetty on 2/25/24.
//

import SwiftUI

struct CompanyQuestionView: View {
    @Binding var card: CompanyCard
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    CompanyQuestionView(card: .constant(CompanyCard(name: "Quorvo", videoName: "QuorvoVideo", currentPostings: ["Software Engineer" : "job descriptiont for software engineer", "Sales Specialist Inter": "sales speicalist job description", "Marketing Intern": "markeing intern job description"], malePercent: 71, femPercent: 29, demographics: ["White": 54, "Latino": 17, "Asian": 14], deiGoals: "When varied backgrounds, experiences and ideas converge, great things are bound to happen. We truly believe that each person brings unique perspectives that help expand our thoughts and broaden our reach. This is why we are committed to ensuring that at Qorvo everyone is equally championed, valued, included, and understood.")))
}
