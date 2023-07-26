//
//  ViewModel.swift
//  swift_UI-tutorial
//
//  Created by Marco Fiorito on 25/7/23.
//

import Foundation
import Observation

@Observable
class ViewModel {
    var selectedLandmark: Landmark = landmarks[0]
}
