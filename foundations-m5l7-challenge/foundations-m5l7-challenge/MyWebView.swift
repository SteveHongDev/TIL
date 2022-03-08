//
//  MyWebView.swift
//  foundations-m5l7-challenge
//
//  Created by 홍성범 on 2022/03/08.
//

import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        
        let webView = WKWebView()
        
        // Create the request and load it
        let request = URLRequest(url: url)
        webView.load(request)
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        return
    }
}

