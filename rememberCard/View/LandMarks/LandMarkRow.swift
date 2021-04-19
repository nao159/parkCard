//
//  LandMarkRow.swift
//  rememberCard
//
//  Created by Максим Нуждин on 18.04.2021.
//

import SwiftUI

struct LandMarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandMarkRow_Previews: PreviewProvider {
    
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group {
            LandMarkRow(landmark: landmarks[0])
            LandMarkRow(landmark: landmarks[1])
        }.previewLayout(.fixed(width: 300, height: 50))
    }
}
