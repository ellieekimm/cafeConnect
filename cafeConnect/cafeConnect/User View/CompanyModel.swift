//
//  CompanyModel.swift
//  cafeConnect
//
//  Created by Saishreeya Kantamsetty on 2/24/24.
//

import Foundation

struct CompanyCard: Identifiable {
    let id = UUID()
    let name: String
    let videoName: String
    let currentPostings: [String]
    let malePercent: Int
    let femPercent: Int
    let demographics: [String: Int]
    let deiGoals: [String]
    
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    var degree: Double = 0.0
    
    static var data: [CompanyCard] {
        [
            CompanyCard(name: "Quorvo", videoName: "QuorvoVideo", currentPostings: ["Software Engineer", "Sales Specialist Inter", "Marketing Inter"], malePercent: 71, femPercent: 29, demographics: ["White": 54, "Latino": 17, "Asian": 14], deiGoals: ["When varied backgrounds, experiences and ideas converge, great things are bound to happen. We truly believe that each person brings unique perspectives that help expand our thoughts and broaden our reach. This is why we are committed to ensuring that at Qorvo everyone is equally championed, valued, included, and understood."])
            

        ]
    }
}
