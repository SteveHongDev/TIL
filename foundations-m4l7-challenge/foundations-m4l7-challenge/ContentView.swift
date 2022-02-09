//
//  ContentView.swift
//  foundations-m4l7-challenge
//
//  Created by 홍성범 on 2022/02/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geo in
            TabView {
                
                ForEach (1..<51) { index in
                    let r = Double.random(in: 0..<1)
                    let g = Double.random(in: 0..<1)
                    let b = Double.random(in: 0..<1)
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color(.sRGB, red: r, green: g, blue: b, opacity: 1))
                        Image(systemName: "\(index).circle")
                            .resizable()
                            .scaledToFit()
                            .padding(50)
                    }
                    .frame(width: geo.size.width - 50, height: geo.size.height - 100, alignment: .center)
                    .cornerRadius(20)
                    .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
                }
                
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
