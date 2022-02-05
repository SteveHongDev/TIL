//
//  ContentView.swift
//  lesson-13-challenge
//
//  Created by 홍성범 on 2022/02/05.
//

import SwiftUI

struct ContentView: View {
    @State var credits = 1000
    @State var shape1 = "star"
    @State var shape2 = "star"
    @State var shape3 = "star"
    
    var body: some View {
        VStack {
            Text("Slots!")
                .padding()
                .padding(.top, 50.0)
                .font(.system(size: 40.0))
            Spacer()
            Text("Credits: " + String(credits))
                .padding()
            Spacer()
            HStack {
                Image(shape1)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(shape2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(shape3)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button("Spin") {
                let shapes = ["apple", "cherry", "star"]
                let rnd1 = Int.random(in: 0...2)
                let rnd2 = Int.random(in: 0...2)
                let rnd3 = Int.random(in: 0...2)
                
                shape1 = shapes[rnd1]
                shape2 = shapes[rnd2]
                shape3 = shapes[rnd3]
                
                if shape1 == shape2 && shape2 == shape3 {
                    credits += 100
                } else {
                    credits -= 10
                }
            }
            .padding(.horizontal, 25.0)
            .padding(.vertical, 5.0)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10.0)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
