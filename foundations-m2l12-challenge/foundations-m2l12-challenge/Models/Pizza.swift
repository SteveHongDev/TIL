//
//  Pizza.swift
//  foundations-m2l12-challenge
//
//  Created by 홍성범 on 2022/02/06.
//

import Foundation

class Pizza: Identifiable, Decodable {
    
    var id: UUID?
    var name: String
    var toppings: [String]
    var image: String
}
