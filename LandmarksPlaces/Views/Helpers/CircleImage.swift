//
//  CircleImage.swift
//  LandmarksPlaces
//
//  Created by George Higbie on 1/27/21.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(borderColor, lineWidth: lineWidth))
            .shadow(radius: radius)
    }
    
    let lineWidth: CGFloat = 4
    let radius: CGFloat = 10
    let borderColor: Color = Color.white
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
