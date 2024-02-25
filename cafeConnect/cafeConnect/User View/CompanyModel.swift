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
            CompanyCard(name: "Quorvo", videoName: "maryQorvo", currentPostings: ["Software Engineer" : "We are seeking a talented and motivated Software Engineer to join our dynamic team. As a Software Engineer, you will play a key role in designing, developing, and maintaining high-quality software solutions that meet our clients' needs. You will collaborate with cross-functional teams to innovate and deliver cutting-edge products in a fast-paced environment.", "Sales Specialist Intern": "We are looking for a results-driven Sales Specialist to join our dynamic sales team. As a Sales Specialist, you will be responsible for building and maintaining relationships with clients, understanding their needs, and recommending solutions that best meet their requirements. You will play a key role in driving revenue growth and achieving sales targets through effective prospecting, negotiation, and closing techniques.", "Marketing Intern": "We are seeking a creative and motivated Marketing Intern to join our team. As a Marketing Intern, you will have the opportunity to gain hands-on experience in various aspects of marketing, including social media management, content creation, market research, and campaign analysis. This internship is designed to provide valuable learning opportunities and exposure to real-world marketing strategies in a supportive and collaborative environment."], malePercent: 71, femPercent: 29, demographics: ["White": 54.1, "Latinx": 12.9, "Asian": 18.8, "Black": 10.6], deiGoals: "When varied backgrounds, experiences and ideas converge, great things are bound to happen. We truly believe that each person brings unique perspectives that help expand our thoughts and broaden our reach. This is why we are committed to ensuring that at Qorvo everyone is equally championed, valued, included, and understood."),
            
            CompanyCard(name: "Fidelity", videoName: "hannahFidelity", currentPostings: ["Software Engineer" : "We are seeking a talented and motivated Software Engineer to join our dynamic team. As a Software Engineer, you will play a key role in designing, developing, and maintaining high-quality software solutions that meet our clients' needs. You will collaborate with cross-functional teams to innovate and deliver cutting-edge products in a fast-paced environment.", "Sales Specialist Intern": "We are looking for a results-driven Sales Specialist to join our dynamic sales team. As a Sales Specialist, you will be responsible for building and maintaining relationships with clients, understanding their needs, and recommending solutions that best meet their requirements. You will play a key role in driving revenue growth and achieving sales targets through effective prospecting, negotiation, and closing techniques.", "Marketing Intern": "We are seeking a creative and motivated Marketing Intern to join our team. As a Marketing Intern, you will have the opportunity to gain hands-on experience in various aspects of marketing, including social media management, content creation, market research, and campaign analysis. This internship is designed to provide valuable learning opportunities and exposure to real-world marketing strategies in a supportive and collaborative environment."], malePercent: 61.4, femPercent: 38.6, demographics: ["White": 65.8, "Latinx": 12.7, "Asian": 9.2, "Black": 8.7], deiGoals: "Embracing diversity and fostering inclusion are key to innovation and we remain committed to firmly embedding diversity and inclusion in our business."),
            
            CompanyCard(name: "Carmax", videoName: "annaCarmax", currentPostings: ["Software Engineer" : "We are seeking a talented and motivated Software Engineer to join our dynamic team. As a Software Engineer, you will play a key role in designing, developing, and maintaining high-quality software solutions that meet our clients' needs. You will collaborate with cross-functional teams to innovate and deliver cutting-edge products in a fast-paced environment.", "Sales Specialist Intern": "We are looking for a results-driven Sales Specialist to join our dynamic sales team. As a Sales Specialist, you will be responsible for building and maintaining relationships with clients, understanding their needs, and recommending solutions that best meet their requirements. You will play a key role in driving revenue growth and achieving sales targets through effective prospecting, negotiation, and closing techniques.", "Marketing Intern": "We are seeking a creative and motivated Marketing Intern to join our team. As a Marketing Intern, you will have the opportunity to gain hands-on experience in various aspects of marketing, including social media management, content creation, market research, and campaign analysis. This internship is designed to provide valuable learning opportunities and exposure to real-world marketing strategies in a supportive and collaborative environment."], malePercent: 66, femPercent: 34, demographics: ["White": 57.8 , "Latinx": 18.1, "Asian": 6.3, "Black": 14.0], deiGoals: "We support a culture of integrity, where every associate is welcomed, supported, and valued for their unique perspectives and backgrounds.")
            

        ]
    }
}
