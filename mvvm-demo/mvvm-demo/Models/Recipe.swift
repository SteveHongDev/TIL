//
//  Recipe.swift
//  mvvm-demo
//
//  Created by 홍성범 on 2022/02/06.
//

import Foundation

class Recipe: Decodable, Identifiable {
    
    var id: UUID?
    var name = ""
    var cuisine = ""
    
}
