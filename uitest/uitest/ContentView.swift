//
//  ContentView.swift
//  uitest
//
//  Created by 홍성범 on 2022/02/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack() {
            
            Spacer()
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            HStack() {
                
                Spacer()
                Text("Hello!")
                Spacer()
                Text("Swift!")
                Spacer()
                Text("UI!")
                Spacer()
            }
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
