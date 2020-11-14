//
//  ForFun2App.swift
//  ForFun2
//
//  Created by MD Tanvir Alam on 14/11/20.
//

import SwiftUI

@main
struct ForFun2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
