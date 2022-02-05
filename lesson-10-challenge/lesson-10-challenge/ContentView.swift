//
//  ContentView.swift
//  lesson-10-challenge
//
//  Created by 홍성범 on 2022/02/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Button("Text") {
            print("First Button")
        }
        
        Button {
            print("Second Button")
        } label: {
            Image(systemName: "play.fill")
            Text("PLAY")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
