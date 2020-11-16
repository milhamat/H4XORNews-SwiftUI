//
//  ContentView.swift
//  H4XORNews-SwiftUI
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 16/11/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("H4XOR News")
        }
        .onAppear {
            networkManager.frtchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Holla"),
//    Post(id: "3", title: "Bonjour"),
//]
