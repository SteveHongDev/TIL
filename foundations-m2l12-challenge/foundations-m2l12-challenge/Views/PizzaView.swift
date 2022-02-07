//
//  PizzaView.swift
//  foundations-m2l12-challenge
//
//  Created by 홍성범 on 2022/02/07.
//

import SwiftUI

struct PizzaView: View {
    
    var pizza: Pizza
    
    var body: some View {
        HStack {
            Image(pizza.image)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50, alignment: .center)
                .clipped()
            .cornerRadius(10.0)
            
            VStack(alignment: .leading) {
                Text(pizza.name)
                    .font(.title)
                HStack {
                    ForEach(pizza.toppings, id: \.self) {t in
                        Text(t)
                    }
                }
            }
        }
    }
}

struct PizzaView_Previews: PreviewProvider {
    static var previews: some View {
        let model = PizzaModel()
        
        PizzaView(pizza: model.pizzas[0])
    }
}
