//
//  CircleImage.swift
//  real_Features
//
//  Created by Darshan on 2020-08-21.
//  Copyright © 2020 DarshanPatel. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
     @State var animation = true
    var body: some View {
       Image("SpringerTreePark")
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
        .scaleEffect(animation ? 0.5 : 1)
        .rotation3DEffect(Angle(degrees: animation ? 0 : 360), axis: (x: 0, y: 360, z: 0))
        .animation(Animation.easeInOut(duration: 3).repeatForever())
        .onAppear{ self.animation.toggle() }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
