//
//  LandMarkList.swift
//  rememberCard
//
//  Created by Максим Нуждин on 18.04.2021.
//

import SwiftUI

struct LandMarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly: Bool = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { (landmark) -> Bool in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationView() {
            List {
                
                Toggle(isOn: $showFavoriteOnly, label: {
                    Text("Favorites only")
                        .font(.title)
                        .bold()
                })
                
                ForEach (filteredLandmarks) { landmarkPlace in
                    NavigationLink(destination: LandMarkDetail(landmark: landmarkPlace)) {
                        
                        LandMarkRow(landmark: landmarkPlace)
                    }
                }
            }
        }
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        LandMarkList().environmentObject(ModelData())
    }
}
