//
//  ContentView.swift
//  foundations-m2-final
//
//  Created by 홍성범 on 2022/02/07.
//

import SwiftUI

struct QuoteMainView: View {
    @ObservedObject var model = QuoteModel()
    
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                
                VStack {
                    ForEach(model.quotes) { item in
                        NavigationLink {
                            QuoteDetailView(quote: item)
                        } label: {
                            ZStack {
                                Image(item.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 300, height: 300, alignment: .center)
                                    
                                    .cornerRadius(20)
                                
                                VStack {
                                    Text(item.quotes[0])
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .padding(.bottom, 30)
                                    Text("- \(item.author)")
                                    
                                }
                                .foregroundColor(.white)
                                .padding(.all, 30)
                            }
                            .padding()
                            
                        }
                    }
                }
                
            }
            .navigationTitle("Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteMainView()
    }
}
