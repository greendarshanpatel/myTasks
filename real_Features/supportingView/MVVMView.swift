//
//  MVVMView.swift
//  real_Features
//
//  Created by Darshan on 2020-08-21.
//  Copyright © 2020 DarshanPatel. All rights reserved.
//

import SwiftUI

struct MVVMView: View {
      @State var animation = true
    var body: some View {
      VStack(spacing: 20) {
        // animation on the text lable shows hidden text.
                    Button(action: { self.animation.toggle() }) {
                    Text(" Amazing SwiftUI Tap")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .shadow(color: .gray, radius: 10, x: 0, y: 10)
                    }
                        .offset(y: animation ? UIScreen.main.bounds.height / 2.5 : 0)
                        .animation(.easeInOut(duration: 2))
                    
                    Text("    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tempor aliquam maximus. Vestibulum vitae pulvinar lectus. Aenean non laoreet libero, quis tincidunt leo. Mauris ac bibendum eros. Nunc vitae orci purus. Aliquam in lorem nec quam posuere dapibus in sit amet ligula. Donec tristique turpis arcu, vel tincidunt nibh dictum tristique. Vestibulum consequat dignissim justo, aliquet tincidunt dolor fringilla nec. Duis imperdiet congue justo et pulvinar. In posuere fringilla sapien, venenatis sollicitudin felis ultrices sit amet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Proin rhoncus risus mi, sit amet viverra felis dapibus eget. Quisque ornare, neque a iaculis efficitur, risus velit malesuada turpis, quis tincidunt dolor ante eu massa.")
                        .font(.body)
                        .foregroundColor(.gray)
                        .lineSpacing(10)
                        .lineLimit(23)
                        .opacity(animation ? 0 : 1)
                        .animation(Animation.easeInOut(duration: 3))
                }
                .frame(minHeight: 0, maxHeight: .infinity)
                .padding(.horizontal, 20)
        //        .onAppear { self.animation.toggle() }
    }
}

struct MVVMView_Previews: PreviewProvider {
    static var previews: some View {
        MVVMView()
    }
}
