//
//  Pizza.swift
//  foundations-m2l7-challenge
//
//  Created by 홍성범 on 2022/02/06.
//

import Foundation

class Pizza: Identifiable {
    
    var id = UUID()
    var name = ""
    var topping1 = ""
    var topping2 = ""
    var topping3 = ""
    
    init(name: String, topping1: String, topping2: String, topping3: String) {
        self.name = name
        self.topping1 = topping1
        self.topping2 = topping2
        self.topping3 = topping3
    }
}
