//
//  swift_UI_tutorialApp.swift
//  swift_UI-tutorial
//
//  Created by Marco Fiorito on 24/7/23.
//

import SwiftUI

@main
struct swift_UI_tutorialApp: App {
    @State private var model = ViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(model)
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
