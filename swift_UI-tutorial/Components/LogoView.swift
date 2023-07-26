//
//  SwiftUIView.swift
//  swift_UI-tutorial
//
//  Created by Marco Fiorito on 24/7/23.
//

import SwiftUI

struct LogoView: View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle()
                    .stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 10)
    }
}

#Preview {
    LogoView(image: Image("metalabs"))
}
