//
//  ContentView.swift
//  foundations-m5l7-challenge
//
//  Created by 홍성범 on 2022/03/08.
//

import SwiftUI
import WebKit
struct ContentView: View {
    var body: some View {
        MyWebView(url: URL(string: "https://m.naver.com/")!)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
