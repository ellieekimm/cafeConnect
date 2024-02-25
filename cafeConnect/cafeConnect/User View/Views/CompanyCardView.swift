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
    
    
    var body: some View {
            ZStack {
                VStack(alignment: .leading) {
                    Text(card.name)
                        .font(.title)
                        .fontWeight(.bold)
                        VStack {
                            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "IMG_2768", withExtension: "mov")!))
                                
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
                        .background(Color.gray)
                        .cornerRadius(15)
                    
                    VStack (alignment: .leading, spacing: 10) {
                        Text("Demographics:")
                            .font(.headline)
                            .padding([.top, .leading], 10)
                        TabView {
                            DemographicView(menPercentage: 0.9, womenPercentage: 0.1)
                                .padding(.trailing, 125)
                            RaceView(card: .constant(CompanyCard(name: "Quorvo", videoName: "QuorvoVideo", currentPostings: ["Software Engineer" : "job descriptiont for software engineer", "Sales Specialist Inter": "sales speicalist job description", "Marketing Intern": "markeing intern job description"], malePercent: 71, femPercent: 29, demographics: ["White": 54, "Latino": 17, "Asian": 14], deiGoals: "When varied backgrounds, experiences and ideas converge, great things are bound to happen. We truly believe that each person brings unique perspectives that help expand our thoughts and broaden our reach. This is why we are committed to ensuring that at Qorvo everyone is equally championed, valued, included, and understood.")))
                        }
                        .tabViewStyle(.page(indexDisplayMode: .always))
                        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                        
                    }
                    .background(Color.gray)
                    .cornerRadius(15)
                    
                  
                        
                }
                .padding(.leading, 20)
                .padding(.trailing, 20)
            }
            .offset(x: card.x, y: card.y)
            .rotationEffect(.init(degrees: card.degree))
            .gesture (
                DragGesture()
                    .onChanged{ value in
                        //for dragging the card
                        onDragChanged(value)
                    }
                    .onEnded{ value in
                        // when user stops dragging
                        onDragEnd(value)
                    }
        )
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
        let alert = UIAlertController(title: "Input Voice Message", message: "DEI prompt for Quorvo", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
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
    
}

#Preview {
    CompanyCardView(card: .constant(CompanyCard(name: "Quorvo", videoName: "QuorvoVideo", currentPostings: ["Software Engineer" : "job descriptiont for software engineer", "Sales Specialist Inter": "sales speicalist job description", "Marketing Intern": "markeing intern job description"], malePercent: 71, femPercent: 29, demographics: ["White": 54, "Latino": 17, "Asian": 14], deiGoals: "When varied backgrounds, experiences and ideas converge, great things are bound to happen. We truly believe that each person brings unique perspectives that help expand our thoughts and broaden our reach. This is why we are committed to ensuring that at Qorvo everyone is equally championed, valued, included, and understood.")))
}
