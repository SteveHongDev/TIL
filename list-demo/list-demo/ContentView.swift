//
//  ContentView.swift
//  list-demo
//
//  Created by 홍성범 on 2022/02/05.
//

import SwiftUI

struct ContentView: View {
    
    var array = ["Element 1", "Element 2", "Element 3", "Element 4", "Element 5"]
    
    var body: some View {
        
        NavigationView {
            
            List(array, id: \.self) { arrayElement in
                
                NavigationLink {
                    Text("Destination")
                } label: {
                    Text(arrayElement)
                }
                
            }.navigationTitle(Text("My List")) // this modifier should be placed after the first subview
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
