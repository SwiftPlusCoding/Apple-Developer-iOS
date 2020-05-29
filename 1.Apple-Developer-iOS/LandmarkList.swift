//
//  LandmarkList.swift
//  1.Apple-Developer-iOS
//
//  Created by Mykola Matsko on 29.05.2020.
//  Copyright © 2020 Mykola Matsko. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landMark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
            ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
                LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
