//
//  NetworkManager.swift
//  H4XORNews-SwiftUI
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 16/11/20.
//

import Foundation

class NetworkManager {
    
    func frtchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                           let result = try decoder.decode(Result.self, from: safeData)
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
