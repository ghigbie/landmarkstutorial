//
//  LandmarkList.swift
//  LandmarksPlaces
//
//  Created by George Higbie on 1/27/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks, id: \.id){ landmark in
                LandmarkRow(landmark: landmark)
            }
        }
        .navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
