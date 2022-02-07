//
//  QuoteDetailView.swift
//  foundations-m2-final
//
//  Created by 홍성범 on 2022/02/07.
//

import SwiftUI

struct QuoteDetailView: View {
    var quote: Quote
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading) {
                Text("\(quote.author)'s Quotes are here!")
                    .font(.title2)
                    .fontWeight(.bold)
                ForEach(0..<quote.quotes.count) { index in
                    Text("\(index + 1). \(quote.quotes[index])")
                        .padding(.vertical)
                }
            }
                
        }
        .navigationTitle("Details")
        .padding()
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        
        QuoteDetailView(quote: model.quotes[0])
    }
}
