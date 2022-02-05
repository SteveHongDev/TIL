//
//  ContentView.swift
//  foundations-m2l4-challenge
//
//  Created by 홍성범 on 2022/02/05.
//

import SwiftUI

struct ContentView: View {
    @State var array: [Int] = []
    
    var body: some View {
        VStack {
            List(array, id: \.self) { element in
                Text(String(element))
            }
            Button("First Button") {
                var rnd = Int.random(in: 1...10)
                
                while rnd != 7 {
                    array.append(rnd)
                    rnd = Int.random(in: 1...10)
                }
                array.append(rnd)
            }
            .padding()
            .background(.red)
            .foregroundColor(.white)
            
            Button("Second Button") {
                for i in 0...array.count-1 {
                    array[i] += 1
                }
            }
            .padding()
            .background(.green)
            .foregroundColor(.white)
            
            Button("Third Button") {
                array.removeAll()
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
