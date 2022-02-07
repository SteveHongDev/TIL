//
//  QuoteModel.swift
//  foundations-m2-final
//
//  Created by 홍성범 on 2022/02/07.
//

import Foundation

class QuoteModel: ObservableObject {
    @Published var quotes: [Quote]
    
    init() {
        quotes = DataService.getData()
    }
}
