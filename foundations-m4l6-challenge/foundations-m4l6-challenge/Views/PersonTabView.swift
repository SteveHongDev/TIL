//
//  PersonTabView.swift
//  foundations-m4l6-challenge
//
//  Created by 홍성범 on 2022/02/08.
//

import SwiftUI

struct PersonTabView: View {
    
    @State var tabIndex = 1
    
    var body: some View {
        TabView (selection: $tabIndex) {
            PersonListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("List")
                }
                .tag(1)
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(2)
        }
        .environmentObject(PersonModel())

    }
}

struct PersonTabView_Previews: PreviewProvider {
    static var previews: some View {
        PersonTabView()
    }
}
