//
//  Person.swift
//  foundations-m4l6-challenge
//
//  Created by 홍성범 on 2022/02/08.
//

import Foundation

struct Person: Identifiable {
    
    var id: UUID?
    var name: String
    var address: String
    var company: String
    var yearsOfExperience: Int
}
