//
//  Data.swift
//  real_Features
//
//  Created by Darshan on 2020-08-21.
//  Copyright © 2020 DarshanPatel. All rights reserved.
//

import SwiftUI

struct Post : Codable, Identifiable {
    
    let id = UUID()
    var title : String
    var body : String
        }
    class Api {
    // Api call with URL https://jsonplaceholder.typicode.com/posts.
    
    func getPosts(completion: @escaping ([Post]) ->()){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        URLSession.shared.dataTask(with: url){(data,_, _)in
            let posts = try! JSONDecoder().decode([Post].self, from : data!)
            DispatchQueue.main.async {
                 completion(posts)
            }
           
            print(posts)
        }
    .resume()
        }
}

struct Data_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
