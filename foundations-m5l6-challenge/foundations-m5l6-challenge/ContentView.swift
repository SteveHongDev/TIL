//
//  ContentView.swift
//  foundations-m5l6-challenge
//
//  Created by 홍성범 on 2022/03/08.
//

import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        
        let url = URL(string: "https://media.fmkorea.com/files/attach/new2/20220113/66955397/73668259/4248559201/99b983892094b5c6d2fc3736e15da7d1.mp4?d")
        
        VStack {
            if let url = url {
                VideoPlayer(player: AVPlayer(url: url))
                    .frame(height: 300)
            }
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Description")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom)
                    Text(Constants.description)
                }
                .padding()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
