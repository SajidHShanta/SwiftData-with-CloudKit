//
//  SwiftDataWithCloudKitApp.swift
//  SwiftDataWithCloudKit
//
//  Created by Sajid Shanta on 20/10/25.
//

import SwiftData
import SwiftUI

@main
struct SwiftDataWithCloudKitApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}


/*
 
 1. Editing SwiftData model objects – SwiftData SwiftUI Tutorial 1/5 - https://youtu.be/jnW5m1qUINA
 
 */
