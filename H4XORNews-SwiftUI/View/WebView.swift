//
//  WebView.swift
//  H4XORNews-SwiftUI
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 16/11/20.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    //Context = UIViewRepresentableContext<WebView>
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        if let safeString = urlString{
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
