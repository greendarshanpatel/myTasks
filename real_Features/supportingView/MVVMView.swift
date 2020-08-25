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
                    
                    Text(" Model-View-ViewModel (MVVM) is a structural design pattern that separates objects into three distinct groups: Models hold application data. They're usually structs or simple classes. Views display visual elements and controls on the screen. They're typically subclasses of UIView .")
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
