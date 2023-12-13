//
//  CircleImage.swift
//  landmark
//
//  Created by Jack Lee on 2023/12/13.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock") // no need to use 'systemName'?
            .clipShape(Circle())
            .overlay(content: {
                Circle().stroke(.white, lineWidth: 4)
            })
//            .overlay {    // equals
//                Circle().stroke(.gray, lineWidth: 4)
//            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
