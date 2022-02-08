//
//  SettingsView.swift
//  foundations-m4l6-challenge
//
//  Created by 홍성범 on 2022/02/08.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var model: PersonModel
    
    var body: some View {
        VStack {
            Text("Display Preferences")
                .font(.title)
            .fontWeight(.bold)
            ScrollView {
                VStack {
                    Toggle("Show name:", isOn: $model.showName)
                    Toggle("Show address:", isOn: $model.showAddress)
                    Toggle("Show Company:", isOn: $model.showCompany)
                    Toggle("Show Years of Experience:", isOn: $model.showYears)
                }
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
