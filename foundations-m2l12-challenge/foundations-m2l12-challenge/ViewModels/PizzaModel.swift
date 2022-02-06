//
//  PizzaModel.swift
//  foundations-m2l12-challenge
//
//  Created by 홍성범 on 2022/02/06.
//

import Foundation

class PizzaModel: ObservableObject {
    @Published var pizzas = [Pizza]()
    
    init() {
        let jsonPath = Bundle.main.path(forResource: "pizzas", ofType: "json")
        
        if let jsonPath = jsonPath {
            let url = URL(fileURLWithPath: jsonPath)
            
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                
                do {
                    let pizzaData = try decoder.decode([Pizza].self, from: data)
                    for p in pizzaData {
                        p.id = UUID()
                    }
                    
                    pizzas = pizzaData
                    
                } catch {
                    print(error)
                }
                
            } catch {
                print(error)
            }
        }
        
        
        
        
    }
}
