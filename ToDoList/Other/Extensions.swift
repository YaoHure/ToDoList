//
//  Extensions.swift
//  ToDoList
//
//  Created by Yaowanart Hure on 23/08/2023.
//

import Foundation

extension Encodable {
    func asDisctionnary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
