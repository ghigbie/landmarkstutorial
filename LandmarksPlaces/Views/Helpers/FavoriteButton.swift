//
//  FavoritesButton.swift
//  LandmarksPlaces
//
//  Created by George Higbie on 1/28/21.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(){
            isSet.toggle()
        } label: {
            Image(systemName: isSet ? "star.fill" : "star" )
                .foregroundColor(isSet ? .yellow : .gray)
        }
        
    }
}

struct FavoritesButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
