//
//  ContentView.swift
//  Lesson 4 Challenge
//
//  Created by 홍성범 on 2022/02/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            ZStack {
                Image("toronto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10.0)
                .padding()
                
                VStack {
                    Text("CN Tower")
                        .font(.system(size: 30))
                    Text("Toronto")
                        .font(.system(size: 12))
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(.black.opacity(0.8))
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .cornerRadius(15.0)
            }
            
            ZStack {
                Image("london")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10.0)
                .padding()
                
                VStack {
                    Text("Big Ben")
                        .font(.system(size: 30))
                    Text("London")
                        .font(.system(size: 12))
                }
                .padding(.all)
                .background(.black.opacity(0.8))
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .cornerRadius(15.0)
            }
        }
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
