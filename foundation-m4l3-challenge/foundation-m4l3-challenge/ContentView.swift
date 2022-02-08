//
//  ContentView.swift
//  foundation-m4l3-challenge
//
//  Created by 홍성범 on 2022/02/08.
//

import SwiftUI

struct ContentView: View {
    
    @State var tagIndex = 1
    
    var body: some View {
        TabView(selection: $tagIndex) {
            Text("This tab's tag is \(tagIndex)")
                .tabItem {
                    VStack {
                        Image(systemName: "tortoise")
                        Text("Tab 1")
                    }
                }
                .tag(1)
            
            Button("Take me to tab 3!") {
                tagIndex = 3
            }
            .tabItem {
                Image(systemName: "arrow.right")
                Text("Tab 2")
            }
            .tag(2)
            
            Text("This is tab 3!")
                .tabItem {
                    Image(systemName: "hands.clap")
                    Text("Tab 3")
                }
                .tag(3)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
