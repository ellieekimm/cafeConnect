//
//  PostingView.swift
//  cafeConnect
//
//  Created by Saishreeya Kantamsetty on 2/24/24.
//

import SwiftUI

struct PostingView: View {
    let item: String
    
    var body: some View {
        Text(item)
            .frame(width: 350, height: 50)
            .font(.body)
            .foregroundColor(.primary)
            .background(Color.blue)
            .cornerRadius(15)
   
    }
}

#Preview {
    PostingView(item: "hello")
}
