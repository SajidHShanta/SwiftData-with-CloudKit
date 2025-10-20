//
//  Job.swift
//  SwiftDataWithCloudKit
//
//  Created by Sajid Shanta on 20/10/25.
//

import Foundation
import SwiftData

@Model
class Job {
    var name: String = "None"
    var priority: Int = 1
    var owneer: User?
    
    init(name: String, priority: Int, owneer: User? = nil) {
        self.name = name
        self.priority = priority
        self.owneer = owneer
    }
}


//@Model
//class Job {
//    var name: String
//    var priority: Int
//    var owneer: User?
//
//    init(name: String, priority: Int, owneer: User? = nil) {
//        self.name = name
//        self.priority = priority
//        self.owneer = owneer
//    }
//}
