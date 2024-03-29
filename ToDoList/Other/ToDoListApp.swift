//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Yaowanart Hure on 23/08/2023.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
