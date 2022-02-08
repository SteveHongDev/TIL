//
//  ContentView.swift
//  tabview-demo
//
//  Created by 홍성범 on 2022/02/08.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex = 0
    
    var body: some View {
        
        TabView (selection: $tabIndex) {
            
            Text("This is tab 1")
                .tabItem {
                    VStack {
                        Image(systemName: "pencil")
                        Text("Tab 1")
                    }
                }
                .tag(0)
            
            VStack {
                Text("This is tab 2")
                Text("This is some more text")
            }
            .tabItem {
                Image(systemName: "star")
                Text("Tab 2")
            }
            .tag(1)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
