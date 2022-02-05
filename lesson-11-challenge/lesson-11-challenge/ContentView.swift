//
//  ContentView.swift
//  lesson-11-challenge
//
//  Created by 홍성범 on 2022/02/05.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    @State var flag = 0
    
    var body: some View {
        VStack {
            Text(String(number))
                .padding()
            Button("Increase or Decrease") {
                if flag == 0 {
                    increase()
                } else {
                    decrease()
                }
                
                if number > 50 {
                    flag = 1
                } else if number < 0 {
                    flag = 0
                }
            }
        }
    }
    
    func increase() {
        let random = Int.random(in: 1...10)
        number += random
    }
    
    func decrease() {
        let random = Int.random(in: 1...10)
        number -= random
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
