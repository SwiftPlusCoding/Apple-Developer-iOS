//
//  CircleImage.swift
//  1.Apple-Developer-iOS
//
//  Created by Mykola Matsko on 29.05.2020.
//  Copyright © 2020 Mykola Matsko. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
