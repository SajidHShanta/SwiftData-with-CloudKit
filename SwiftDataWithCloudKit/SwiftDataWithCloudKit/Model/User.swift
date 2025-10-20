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
    
    init(name: String, city: String, joinDate: Date = Date()) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
}
