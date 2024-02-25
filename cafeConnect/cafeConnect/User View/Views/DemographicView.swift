//
//  DemographicView.swift
//  cafeConnect
//
//  Created by Saishreeya Kantamsetty on 2/24/24.
//

import SwiftUI

struct DemographicView: View {
    let menPercentage: CGFloat
    let womenPercentage: CGFloat
    
    var body: some View {
        let maxPercentage = max(menPercentage, womenPercentage)
        
        VStack(alignment: .leading, spacing: 10) {
            VStack (alignment: .leading) {
                Text("Men")
                    .font(.headline)
                Rectangle()
                    .fill(Color.men)
                    .frame(width: menPercentage * 200 / maxPercentage, height: 30) // Adjust width based on percentage
                Text("\(Int(menPercentage * 100))%")
                    .font(.caption)
            }
            
            VStack(alignment: .leading) {
                Text("Women")
                    .font(.headline)
                Rectangle()
                    .fill(Color.female )
                    .frame(width: womenPercentage * 200 / maxPercentage, height: 30) // Adjust width based on percentage
                Text("\(Int(womenPercentage * 100))%")
                    .font(.caption)
            }
        }
    }
}


#Preview {
    DemographicView(menPercentage: 0.7, womenPercentage: 0.3)
}
