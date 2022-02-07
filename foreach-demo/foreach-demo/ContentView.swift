//
//  ContentView.swift
//  foreach-demo
//
//  Created by 홍성범 on 2022/02/07.
//

import SwiftUI

struct ContentView: View {
    
    var array = ["Pizza", "Burrito", "Sushi"]
    
    
    
    var body: some View {
        
        ScrollView {
            
            ForEach(0..<array.count, id: \.self) { f in
                
                // This code will be repeated for each element in the array
                Text(String(f) + " " + array[f])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
