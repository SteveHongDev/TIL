//
//  ContentView.swift
//  foundations-m2l3-challenge
//
//  Created by 홍성범 on 2022/02/05.
//

import SwiftUI

struct ContentView: View {
    @State var array = ["String 1", "String 2", "String 3", "String 4", "String 5"]
    
    var body: some View {
        
        VStack {
            NavigationView {
                List(array, id: \.self) { element in
                    NavigationLink {
                        Text(element)
                    } label: {
                        Text(element)
                    }
                    
                }.navigationTitle("Make More elements")
            }
            Button("Append") {
                array.append("String " + String(array.count+1))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
