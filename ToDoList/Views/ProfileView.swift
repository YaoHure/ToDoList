//
//  ProfileView.swift
//  ToDoList
//
//  Created by Yaowanart Hure on 23/08/2023.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfilViewViewModel()
    init (){
        
    }
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
