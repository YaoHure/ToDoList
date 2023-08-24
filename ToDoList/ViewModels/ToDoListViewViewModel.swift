//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Yaowanart Hure on 23/08/2023.
//

import FirebaseFirestore
import Foundation

//ViewMovel for list of items view
//Primary Tab
class ToDoListViewViewModel: ObservableObject{

    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
