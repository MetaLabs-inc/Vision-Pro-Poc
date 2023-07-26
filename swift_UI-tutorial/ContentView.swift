//
//  ContentView.swift
//  swift_UI-tutorial
//
//  Created by Marco Fiorito on 24/7/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @Environment(ViewModel.self) private var model

    var body: some View {
        @Bindable var model = model

        NavigationSplitView {
            LandmarkList().environment(model)
            .navigationTitle("Points")
        } detail: {
            LandmarkDetail(landmark: model.selectedLandmark)
        }
  
    }
}

//#Preview {
    //ContentView()
//}
