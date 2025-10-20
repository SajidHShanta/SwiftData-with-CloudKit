//
//  User.swift
//  SwiftDataWithCloudKit
//
//  Created by Sajid Shanta on 20/10/25.
//

import Foundation
import SwiftData

@Model
class User {
    var name: String
    var city: String
    var joinDate: Date
    var jobs: [Job] = []
    
    init(name: String, city: String, joinDate: Date = Date()) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
}
