//
//  ContentView.swift
//  real_Features
//
//  Created by Darshan on 2020-08-20.
//  Copyright © 2020 DarshanPatel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.green
        
    }
    
    @State var selected = 0
    
    var body: some View {
        TabView(selection: $selected) {
            DictionaryView().tabItem({
                Image(systemName: "venue")
                    .font(.title)
                //Text("SwiftUI")
            }).tag(0)
            
            MapView().tabItem({
                Image(systemName:"map")
                    .font(.title)
                Text("Map")
            }).tag(1)
            
            MVVMView().tabItem({
                Image(systemName:"location")
                    .font(.title)
                Text("MVVM")
            }).tag(2)
            
            PostListView().tabItem({
                Image(systemName:"api")
                    .font(.title)
                Text("PostList")
            }).tag(3)
            
            notification().tabItem({
                Image(systemName:"notify")
                    .font(.title)
                Text("Notify")
            }).tag(3)
        }.accentColor(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
