//
//  ContentView.swift
//  H4XORNews-SwiftUI
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 16/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("H4XOR News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Holla"),
    Post(id: "3", title: "Bonjour"),
]
