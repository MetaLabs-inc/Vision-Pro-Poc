//
//  Map.swift
//  swift_UI-tutorial
//
//  Created by Marco Fiorito on 24/7/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()

     
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                 setRegion(coordinate)
             }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(coordinate: landmarks[0].locationCoordinate)
}
