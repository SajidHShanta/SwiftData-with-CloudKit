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
    var name: String = "Anonymous"
    var city: String = "Unknown"
    var joinDate: Date = Date.now
    @Relationship(deleteRule: .cascade) var jobs: [Job]? = []
    
    init(name: String, city: String, joinDate: Date = Date()) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
}

//NOTE: CloudKit integration requires that all attributes be optional, or have a default value set.

//class User {
//    var name: String
//    var city: String
//    var joinDate: Date
////    var jobs: [Job]? = []
//    @Relationship(deleteRule: .cascade) var jobs: [Job]? = [] //deleteRule: .cascade means delete the job, if user deleted. by default which will not.
//
//    init(name: String, city: String, joinDate: Date = Date()) {
//        self.name = name
//        self.city = city
//        self.joinDate = joinDate
//    }
//}
