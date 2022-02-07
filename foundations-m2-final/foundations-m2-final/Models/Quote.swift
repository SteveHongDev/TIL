//
//  Quote.swift
//  foundations-m2-final
//
//  Created by 홍성범 on 2022/02/07.
//

import Foundation

class Quote: Identifiable, Decodable {
    
    var id: UUID?
    var author: String
    var quotes: [String]
    var image: String
}
