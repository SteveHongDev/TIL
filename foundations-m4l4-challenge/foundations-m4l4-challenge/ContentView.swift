//
//  ContentView.swift
//  foundations-m4l4-challenge
//
//  Created by 홍성범 on 2022/02/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 0) {
            GeometryReader { geo in
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    .onTapGesture {
                        print("Green Rect")
                        print("width: \(geo.frame(in: .local).width), height: \(geo.frame(in: .local).height)")
                    }
                
                
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: geo.size.width / 3 * 2, height: geo.size.height / 4, alignment: .center)
                    .position(x: geo.size.width / 2, y: geo.size.height / 2)
                    .onTapGesture {
                        print("Red Rect")
                        print("width: \(geo.size.width / 3 * 2), height: \(geo.size.height / 4)")
                    }
            }
            GeometryReader { geo in
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: geo.size.width / 2, height: geo.size.height, alignment: .center)
                    .padding(.leading, geo.size.width / 2)
                    .onTapGesture {
                        print("Orange Rect")
                        print("width: \(geo.size.width / 2), height: \(geo.size.height)")
                    }
                
                Rectangle()
                    .foregroundColor(.purple)
                    .frame(width: geo.size.width / 2, height: geo.size.height, alignment: .center)
                    .onTapGesture {
                        print("Purple Rect")
                        print("width: \(geo.size.width / 2), height: \(geo.size.height)")
                    }
                
                
            }
        }.ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
