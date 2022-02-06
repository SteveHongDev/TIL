//
//  ContentView.swift
//  foundation-m2l9-challenge
//
//  Created by 홍성범 on 2022/02/06.
//

import SwiftUI

struct ContentView: View {
    
    @State var property: [String]?
    
    var body: some View {
        VStack {
            Button("First") {
                property = nil
            }
            Button("Second") {
                // should make empty string array first
                property = [String]()
                
                property?.append("Pizza")
                property?.append("Burger")
                property?.append("Steak")
            }
            
            if let property = property {
                List(property, id: \.self) { p in
                    Text(p)
                }
            } else {
                Text("Press the Second Button")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
