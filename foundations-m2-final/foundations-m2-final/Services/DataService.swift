//
//  DataService.swift
//  foundations-m2-final
//
//  Created by 홍성범 on 2022/02/07.
//

import Foundation

class DataService {
    
    static func getData() -> [Quote] {
        // path
        let quotePath = Bundle.main.path(forResource: "data", ofType: "json")
        
        guard let quotePath = quotePath else {
            return [Quote]()
        }

        // url
        let url = URL(fileURLWithPath: quotePath)
        
        // data
        do {
            let data = try Data(contentsOf: url)
            
            // decoder
            let decoder = JSONDecoder()
            do {
                let quoteData = try decoder.decode([Quote].self, from: data)
                
                for quote in quoteData {
                    quote.id = UUID()
                }
                return quoteData
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
        
        return [Quote]()
    }
    
}
