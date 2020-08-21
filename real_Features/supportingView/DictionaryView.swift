//
//  DictionaryView.swift
//  real_Features
//
//  Created by Darshan on 2020-08-20.
//  Copyright © 2020 DarshanPatel. All rights reserved.
//

import SwiftUI

struct DictionaryView: View {
    //profile of recreational venue
    var body: some View {
        NavigationView {
       VStack {
               MapView()
                   .frame(height: 300)

               CircleImage()
                   .offset(y: -130)
                   .padding(.bottom, -130)

               VStack(alignment: .leading) {
                   Text("Great Rock")
                       .font(.title)
                   HStack(alignment: .top) {
                       Text("Moses Springer Community Centre")
                           .font(.subheadline)
                       Spacer()
                       Text("Waterloo")
                           .font(.subheadline)
                   }
               }
               .padding()

               Spacer()
           }
        }.navigationBarTitle("SwiftUI", displayMode: .inline)
    }
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}
