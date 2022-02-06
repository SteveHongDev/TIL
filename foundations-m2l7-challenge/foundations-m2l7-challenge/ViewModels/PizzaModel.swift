//
//  PizzaModel.swift
//  foundations-m2l7-challenge
//
//  Created by 홍성범 on 2022/02/06.
//

import Foundation

class PizzaModel: ObservableObject {
    
    @Published var pizzas = [Pizza]()
    
    init() {
        pizzas.append(Pizza(name: "Pepperoni", topping1: "Cheese", topping2: "Pork", topping3: "Beef"))
        pizzas.append(Pizza(name: "Super Papa's", topping1: "Sausage", topping2: "Onion", topping3: "Cheese"))
        pizzas.append(Pizza(name: "Cha Cha", topping1: "Cheeze", topping2: "Chicken", topping3: "Green Pepper"))
    }
    
    func plusPineapple() {
        for i in 0..<pizzas.count {
            pizzas[i].topping1 = "Pineapple"
        }
        let temp = pizzas[pizzas.count-1]
        pizzas.shuffle()
    }
}
