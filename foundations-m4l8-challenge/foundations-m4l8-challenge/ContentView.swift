//
//  ContentView.swift
//  foundations-m4l8-challenge
//
//  Created by 홍성범 on 2022/02/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geo in
            ScrollView {
                LazyVStack {
                    ForEach (1..<200) { index in
                        Rectangle()
                            .frame(width: geo.size.width - 40, height: pow(1.1, CGFloat(index)), alignment: .center)
                            .cornerRadius(10)
                            .foregroundColor(.orange)
                        
                    }
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
