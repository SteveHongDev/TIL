//
//  ContentView.swift
//  geometry-reader-demo
//
//  Created by 홍성범 on 2022/02/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
            
        VStack(spacing: 0) {
            // This alignment means not the alignment of frame
            // It means the alignment of the element inside of the frame. (when the element is smaller than frame)
            
            GeometryReader { geo in
                Rectangle()
                    .frame(width: geo.size.width / 4, height: geo.size.height, alignment: .center)
                    .onTapGesture {
                        print("global x: \(geo.frame(in: .global).minX), local y: \(geo.frame(in: .global).minY)")
                        print("local x: \(geo.frame(in: .local).minX), local y: \(geo.frame(in: .local).minY)")
                    }
            }.position(x: 400, y: 300)
            
            GeometryReader { geo in
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: geo.size.width / 4, height: geo.size.height, alignment: .center)
                    .onTapGesture {
                        print("global x: \(geo.frame(in: .global).minX), local y: \(geo.frame(in: .global).minY)")
                        print("local x: \(geo.frame(in: .local).minX), local y: \(geo.frame(in: .local).minY)")
                    }
            }
        }
            
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
