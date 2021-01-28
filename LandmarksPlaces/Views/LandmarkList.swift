//
//  LandmarkList.swift
//  LandmarksPlaces
//
//  Created by George Higbie on 1/27/21.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks, id: \.id){ landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                            LandmarkRow(landmark: landmark)
                        }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 12 Pro Max", "iPhone SE", "iPhone XS Max", "iPad Air (4th generation)"], id: \.self){ deviceName in
                LandmarkList()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
            }
        }
}
