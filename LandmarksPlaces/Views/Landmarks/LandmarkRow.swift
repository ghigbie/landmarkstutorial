//
//  RowView.swift
//  LandmarksPlaces
//
//  Created by George Higbie on 1/27/21.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height:50)
            
            Text(landmark.name)
            
            Spacer()
            
            if(landmark.isFavorite){
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .padding(.trailing, 8)
            }
                
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group{
            ForEach(landmarks){ landmark in
                LandmarkRow(landmark: landmark)
            }
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
   
}
