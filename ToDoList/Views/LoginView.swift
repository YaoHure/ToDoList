//
//  LoginView.swift
//  ToDoList
//
//  Created by Yaowanart Hure on 23/08/2023.
//

import SwiftUI

struct LoginView: View {

    @StateObject var viewmodel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title:"To Do List", subtitle:"Get things done", angle: 15, background: .pink)
                //Login Form
                
                
                Form {
                    
                    if !viewmodel.errorMessage.isEmpty {
                        Text(viewmodel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewmodel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewmodel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Log In",
                        background: .blue) {
                            viewmodel.login()
                    }
                        .padding()

                }
                //Create account
                VStack{
                    Text("New around here ?")
                    NavigationLink("Create An Account", destination:RegisterView())
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
