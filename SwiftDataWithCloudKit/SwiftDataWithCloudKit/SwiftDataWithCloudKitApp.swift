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
 
 1. Editing SwiftData model objects – SwiftDatam SwiftUI Tutorial 1/5 - https://youtu.be/jnW5m1qUINA
 2. Filtering @Query using #Predicate – SwiftData SwiftUI Tutorial 2/5 - https://youtu.be/bV5KnqMHXe0
 3. Dynamically sorting and filtering @Query with SwiftUI – SwiftData SwiftUI Tutorial 3/5 - https://youtu.be/gU1C3tI7MFk
 

 */
