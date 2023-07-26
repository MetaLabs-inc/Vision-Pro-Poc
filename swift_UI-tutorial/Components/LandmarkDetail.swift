//
//  LandmarkDetail.swift
//  swift_UI-tutorial
//
//  Created by Marco Fiorito on 25/7/23.
//

import SwiftUI

struct LandmarkDetail: View {
     var landmark: Landmark

    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 250)

            HStack {
                LogoView(image: landmark.image)
                Text(landmark.name)
                    .font(.title)
                .foregroundColor(.blue)
            }
            .offset(y: -80)
            .padding(.bottom, -80)
            
            HStack {
                Text(landmark.park)
                    .font(.subheadline)
                    .foregroundColor(.pink)
                Text(landmark.state)
                    .font(.subheadline)
                    .foregroundColor(.yellow)
                
            }.padding()
            
            Divider()

            Text("About MetaLabs")
                .font(.title2)
            Text(landmark.description)

        }
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
