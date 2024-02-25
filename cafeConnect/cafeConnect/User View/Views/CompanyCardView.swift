//
//  CompanyCardView.swift
//  cafeConnect
//
//  Created by Saishreeya Kantamsetty on 2/24/24.
//

import SwiftUI
import AVKit

struct CompanyCardView: View {
    @Binding var card: CompanyCard
    @State private var isCardLiked = false
    @State private var selectedCard: CompanyCard? = nil
    let cardGradient = Gradient(colors: [Color.beige, Color.white])
    
    var body: some View {
            ZStack {
                VStack(alignment: .leading) {
                    ScrollView {
                        Text(card.name)
                            .font(.title)
                            .fontWeight(.bold)
                        VStack {
                            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "maryQorvo", withExtension: "mov")!))
                            
                        }
                        .frame(width: 375, height: 200)
                        .cornerRadius(15)
                        
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Current Postings:")
                                .font(.headline)
                            HStack {
                                VStack (alignment: .leading, spacing: 10) {
                                    ForEach(Array(card.currentPostings.keys), id: \.self) { item in
                                        PostingView(item: card.currentPostings[item]!, key: item)
                                        
                                    }
                                }
                            }
                        }
                        .padding()
                        .background(Color("audioGray"))
                        .cornerRadius(15)
                        
                        VStack (alignment: .leading, spacing: 10) {
                            Text("Demographics:")
                                .font(.headline)
                                .padding([.top, .leading], 10)
                            TabView {
                                DemographicView(menPercentage: 0.71, womenPercentage: 0.29)
                                    .padding(.trailing, 125)
                                RaceView(card: .constant(CompanyCard(name: "Quorvo", videoName: "maryQorvo", currentPostings: ["Software Engineer" : "We are seeking a talented and motivated Software Engineer to join our dynamic team. As a Software Engineer, you will play a key role in designing, developing, and maintaining high-quality software solutions that meet our clients' needs. You will collaborate with cross-functional teams to innovate and deliver cutting-edge products in a fast-paced environment.", "Sales Specialist Intern": "sales specialist job description", "Marketing Intern": "marketing intern job description"], malePercent: 71, femPercent: 29, demographics: ["White": 54.1, "Latinx": 12.9, "Asian": 18.8, "Black": 10.6], deiGoals: "When varied backgrounds, experiences and ideas converge, great things are bound to happen. We truly believe that each person brings unique perspectives that help expand our thoughts and broaden our reach. This is why we are committed to ensuring that at Qorvo everyone is equally championed, valued, included, and understood.")))
                            }
                            .tabViewStyle(.page(indexDisplayMode: .always))
                            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                        }
                        .frame(width: 380, height: 250)
                        .background(Color("audioGray"))
                        .cornerRadius(15)
                        VStack (alignment: .leading, spacing: 10) {
                            Text("DEI Goals & Initiatives:")
                                .font(.headline)
                            Text(card.deiGoals)
                        }
                        .padding()
                        .background(Color("audioGray"))
                        .cornerRadius(15)
                    
                    }
                    
                   
                    
                }
                .padding(.leading, 20)
                .padding(.trailing, 20)
            }
            .background(cardGradient)
            .offset(x: card.x, y: card.y)
            .rotationEffect(.init(degrees: card.degree))
            .onTapGesture { location in
                let screenWidth = 350.0
                if location.x < screenWidth / 3 {
                    swipeLeft()
                } else if location.x > 325{
                    swipeRight()
                    likeCard()

                }
            }
        
    }
    
    private func onDragChanged(_ value: DragGesture.Value) {
        withAnimation(.default) {
            card.x = value.translation.width
            card.y = value.translation.height
            card.degree = 7 * (value.translation.width > 0 ? 1: -1)
        }
    }
    
    private func onDragEnd(_ value: DragGesture.Value) {
        withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0)) {
            switch value.translation.width {
            case 0...100:
                card.x = 0; card.degree = 0; card.y = 0
            case let x where x > 100:
                card.x = 500; card.degree = 12
                likeCard()
            case (-100)...(-1):
                card.x = 0; card.degree = 0; card.y = 0
            case let x where x < -100:
                card.x = -500; card.degree = -12
            default:
                break
            }
            
            switch value.translation.height {
            case let y where y < -400:
                swipeUp()
                likeCard()
            default:
                break
            }
        }
    }
    
    private func swipeUp() {
        withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0)) {
            card.y = -1000
            card.degree = 0
        }
    }
    
    private func likeCard() {
        let alert = UIAlertController(title: "Input Voice Message", message: "At Qorvo, we value cultivating inclusive communities, evident in our variety of programs ranging from Women In Tech to the I:Q open dialogue forum. Can you share an experience from your previous work or academic environment where you actively contributed to or observed the promotion of diversity and inclusion?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Submit", style: .default, handler: { _ in
            // Code to navigate or perform action after confirming like
            isCardLiked = true // Assuming you want to navigate to the new view
        }))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        // Get the UIWindowScene from UIApplication
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            // Get the UIWindow
            if let window = windowScene.windows.first {
                // Get the root view controller
                if let rootViewController = window.rootViewController {
                    // Present the UIAlertController
                    rootViewController.present(alert, animated: true, completion: nil)
                }
            }
        }
    }
    
    private func swipeLeft() {
        withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0)) {
            card.x = -500
            card.degree = -12
        }
    }
    
    private func swipeRight() {
        withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0)) {
            card.x = 500
            card.degree = 12
        }
    }
    
}

#Preview {
    CompanyCardView(card: .constant(CompanyCard(name: "Quorvo", videoName: "QuorvoVideo", currentPostings: ["Software Engineer" : "job descriptiont for software engineer", "Sales Specialist Inter": "sales speicalist job description", "Marketing Intern": "markeing intern job description"], malePercent: 71, femPercent: 29, demographics: ["White": 54, "Latino": 17, "Asian": 14], deiGoals: "When varied backgrounds, experiences and ideas converge, great things are bound to happen. We truly believe that each person brings unique perspectives that help expand our thoughts and broaden our reach. This is why we are committed to ensuring that at Qorvo everyone is equally championed, valued, included, and understood.")))
}
