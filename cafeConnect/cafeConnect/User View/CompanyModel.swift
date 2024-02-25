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
    let currentPostings: [String: String]
    let malePercent: Float
    let femPercent: Float
    let demographics: [String: Float]
    let deiGoals: String
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    var degree: Double = 0.0
    
    static var data: [CompanyCard] {
        [
            CompanyCard(name: "Quorvo", videoName: "maryQorvo", currentPostings: ["Software Engineer" : "job description for software engineer", "Sales Specialist Intern": "sales specialist job description", "Marketing Intern": "marketing intern job description"], malePercent: 71, femPercent: 29, demographics: ["White": 54.1, "Latinx": 12.9, "Asian": 18.8, "Black": 10.6], deiGoals: "When varied backgrounds, experiences and ideas converge, great things are bound to happen. We truly believe that each person brings unique perspectives that help expand our thoughts and broaden our reach. This is why we are committed to ensuring that at Qorvo everyone is equally championed, valued, included, and understood."),
            
            CompanyCard(name: "Fidelity", videoName: "hannahFidelity", currentPostings: ["Software Engineer" : "job description for software engineer", "Mobile Engineering Intern": "mobile engineering job description", "Marketing Intern": "marketing intern job description"], malePercent: 61.4, femPercent: 38.6, demographics: ["White": 65.8, "Latinx": 12.7, "Asian": 9.2, "Black": 8.7], deiGoals: "Embracing diversity and fostering inclusion are key to innovation and we remain committed to firmly embedding diversity and inclusion in our business."),
            
            CompanyCard(name: "Carmax", videoName: "annaCarmax", currentPostings: ["Software Engineer" : "job description for software engineer", "Sales Specialist Intern": "sales specialist job description", "Marketing Intern": "marketing intern job description"], malePercent: 66, femPercent: 34, demographics: ["White": 57.8 , "Latinx": 18.1, "Asian": 6.3, "Black": 14.0], deiGoals: "We support a culture of integrity, where every associate is welcomed, supported, and valued for their unique perspectives and backgrounds.")
            

        ]
    }
}
