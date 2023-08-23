//
//  User.swift
//  ToDoList
//
//  Created by Yaowanart Hure on 23/08/2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
