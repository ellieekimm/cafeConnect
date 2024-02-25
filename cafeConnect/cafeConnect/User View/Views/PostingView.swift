//
//  PostingView.swift
//  cafeConnect
//
//  Created by Saishreeya Kantamsetty on 2/24/24.
//

import SwiftUI


struct PostingView: View {
    let item: String
    let key: String
    @State private var isExpanded = false
    
    var body: some View {
        VStack {
            HStack {
                Text(key)
                    .font(.title2)
                    .foregroundColor(.black)
                    .padding()
                Spacer()
                
                Button(action: {
                    isExpanded.toggle()
                }, label: {
                    Image(systemName: isExpanded ? "chevron.down" : "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.black)
                            .padding(.trailing, 10)
                })
                
               
            }
            if isExpanded {
                VStack {
                    Text("Job Description")
                        .font(.headline)
                        .padding()
                    Text(item)
                }
                .foregroundColor(.black)
                
            }
            
            Spacer()
        }
        .frame(width: 350, height: isExpanded ? 200 : 50)
        .background(Color.audioGray)
        .cornerRadius(15)
        
    }
    
    
}

#Preview {
    PostingView(item: "hello", key: "name")
}
