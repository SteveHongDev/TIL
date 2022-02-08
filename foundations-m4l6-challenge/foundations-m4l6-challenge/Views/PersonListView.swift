//
//  PersonListView.swift
//  foundations-m4l6-challenge
//
//  Created by 홍성범 on 2022/02/08.
//

import SwiftUI

struct PersonListView: View {
    
    @EnvironmentObject var model: PersonModel
    
    var body: some View {
        VStack {
            Text("People")
                .font(.title)
                .fontWeight(.bold)
            List (model.people) { p in
                VStack(alignment: .leading) {
                    if model.showName {
                        Text("Name: \(p.name)")
                    }
                    
                    if model.showAddress {
                        Text("Address: \(p.address)")
                    }
                    
                    if model.showCompany {
                        Text("Company: \(p.company)")
                    }
                    
                    if model.showYears {
                        Text("Years of Experience: \(p.yearsOfExperience)")
                    }
                }
                
            }
        }
        
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        
        PersonListView()
    }
}
