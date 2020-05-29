//
//  ContentView.swift
//  1.Apple-Developer-iOS
//
//  Created by Mykola Matsko on 29.05.2020.
//  Copyright © 2020 Mykola Matsko. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landMark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landMark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleImage(image: landMark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landMark.name)
                    .font(.title)
                HStack {
                    Text(landMark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landMark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(Text(landMark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landMark: landmarkData[0])
    }
}
