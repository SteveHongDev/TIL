//
//  ContentView.swift
//  foundations-m2l12-challenge
//
//  Created by 홍성범 on 2022/02/06.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(model.pizzas) { p in
                    PizzaView(pizza: p)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
