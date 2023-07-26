//
//  LandmarkList.swift
//  swift_UI-tutorial
//
//  Created by Marco Fiorito on 25/7/23.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ViewModel.self) private var model

    var body: some View {

        List(landmarks, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
                .onTapGesture {
                    model.selectedLandmark = landmark
                }
                .background(model.selectedLandmark.id == landmark.id ? Color.blue.opacity(0.3) : Color.clear)
        }
    }
}

//#Preview {
//    LandmarkList()
//}
