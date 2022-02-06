//
//  ContentView.swift
//  foundations-m2l12-challenge
//
//  Created by 홍성범 on 2022/02/06.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        
        List(model.pizzas) { p in
            VStack(alignment: .leading) {
                Text(p.name)
                    .font(.title)
                HStack {
                    Text(p.toppings[0])
                    Text(p.toppings[1])
                    Text(p.toppings[2])
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
