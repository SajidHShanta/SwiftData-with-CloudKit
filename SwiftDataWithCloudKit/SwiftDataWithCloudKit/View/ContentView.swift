//
//  ContentView.swift
//  SwiftDataWithCloudKit
//
//  Created by Sajid Shanta on 20/10/25.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query(filter: #Predicate<User> { user in
//        user.name.localizedStandardContains("S") && user.city == "Dhaka"
        if user.name.localizedStandardContains("S") {
            if user.city == "Dhaka" {
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }, sort: \User.name) var users: [User]
    
    var body: some View {
        NavigationStack {
            List(users) { user in
                Text(user.name)
            }
            .navigationBarTitle("Users")
            .toolbar {
                Button("Add Samples", systemImage: "plus") {
                    
                    try? modelContext.delete(model: User.self) //delete all preious users
                    
                    let user1 = User(name: "Sajid", city: "Dhaka", joinDate: .now.addingTimeInterval(86400 * -10))
                    let user2 = User(name: "Mehedi", city: "Bogura", joinDate: .now)
                    let user3 = User(name: "Sami", city: "Bogura", joinDate: .now)
                    let user4 = User(name: "Emon", city: "Dhaka", joinDate: .now)

                    modelContext.insert(user1)
                    modelContext.insert(user2)
                    modelContext.insert(user3)
                    modelContext.insert(user4)

                }
            }
        }
    }
}

#Preview {
    ContentView()
}


//1
//struct ContentView: View {
//    @Environment(\.modelContext) var modelContext
//    @Query(sort: \User.name) var users: [User]
//    @State private var path = [User]()
//    
//    var body: some View {
//        NavigationStack(path: $path) {
//            List(users) { user in
//                NavigationLink(value: user) {
//                    Text(user.name)
//                }
//            }
//            .navigationBarTitle("Users")
//            .navigationDestination(for: User.self) { user in
//                EditUserView(user: user)
//            }
//            .toolbar {
//                Button("Add User", systemImage: "plus") {
//                    let user = User(name: "", city: "", joinDate: .now)
//                    modelContext.insert(user)
//                    path = [user]
//                }
//            }
//        }
//    }
//}
