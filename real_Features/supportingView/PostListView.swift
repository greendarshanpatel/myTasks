//
//  PostListView.swift
//  real_Features
//
//  Created by Darshan on 2020-08-21.
//  Copyright © 2020 DarshanPatel. All rights reserved.
//

import SwiftUI

struct PostListView: View {
    
    @State var posts : [Post] = []
    var body: some View {
        //List cretas a tableView and we are showing title of post
        List(posts){ post in
            Text(post.title)
        }// on apprear method will call the api when gets triggered
        .onAppear(){
            Api().getPosts  { (posts) in
                self.posts = posts
            }
        }
        
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}
