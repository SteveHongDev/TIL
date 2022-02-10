//
//  ContentView.swift
//  picker-demo
//
//  Created by 홍성범 on 2022/02/10.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = "1"
    
    var body: some View {
        VStack {
            Picker ("Tap me", selection: $selectedIndex) {
                Text("Option 1")
                    .tag("1")
                Text("Option 2")
                    .tag("2")
                Text("Option 3")
                    .tag("3")
            }
            .pickerStyle(SegmentedPickerStyle())
            Text("You've selected: \(selectedIndex)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
