//
//  ContentView.swift
//  foundations-m4l9-challenge
//
//  Created by 홍성범 on 2022/02/10.
//

import SwiftUI

struct ContentView: View {
    
    var locations = ["Seoul", "Busan", "Ulsan", "Chicago", "Texas", "California"]
    var orders = ["Fish tacos", "Hamburger", "Pizza", "Chicken", "Steak"]
    
    @State var location = 0
    @State var order = 2
    @State var pickupTime = 7
    
    var body: some View {
        VStack(spacing: 50) {
            Text("Papa Steve's")
                .font(.title)
                .fontWeight(.bold)

            HStack {
                Picker("Location", selection: $location) {
                    ForEach (0..<locations.count) { index in
                        Text(locations[index]).tag(index)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                
                Text(locations[location])
                
            }
            
            Text("Order")
            
            Picker("Order", selection: $order) {
                ForEach(0..<orders.count) { index in
                    Text(orders[index]).tag(index)
                }
            }
            .pickerStyle(.wheel)
            
            Text("Pickup Time")
            
            Picker("Pickup Time", selection: $pickupTime) {
                ForEach(5..<10) { index in
                    Text("\(index) pm").tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Button {
                location = Int.random(in: 0..<locations.count)
                order = Int.random(in: 0..<orders.count)
                pickupTime = Int.random(in: 5...9)
            } label: {
                Text("Pick for me!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
