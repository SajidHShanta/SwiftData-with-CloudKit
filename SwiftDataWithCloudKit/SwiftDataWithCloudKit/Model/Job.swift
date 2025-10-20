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
    var name: String
    var priority: Int
//    var owneer: User?
    @Relationship(deleteRule: .cascade) var owneer: User? //deleteRule: .cascade means delete the job, if user deleted. by default which will not.
    
    init(name: String, priority: Int, owneer: User? = nil) {
        self.name = name
        self.priority = priority
        self.owneer = owneer
    }
}
