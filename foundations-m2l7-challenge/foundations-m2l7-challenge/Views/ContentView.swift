//
//  ContentView.swift
//  foundations-m2l7-challenge
//
//  Created by 홍성범 on 2022/02/06.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        VStack {
            List(model.pizzas) { pizza in
                VStack(alignment: .leading) {
                    Text(pizza.name)
                        .font(.title)
                    HStack {
                        Text(pizza.topping1)
                        Text(pizza.topping2)
                        Text(pizza.topping3)
                    }
                }
            }
            
            Button("Add Pineapple") {
                model.plusPineapple()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
