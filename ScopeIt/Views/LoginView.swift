//
//  LoginView.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 2/24/22.
// 

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var userInfo : UserInfo
    @State private var showSheet = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                HStack {
                    Image(systemName: "mail")
                    TextField("email address", text: $userInfo.email).disableAutocorrection(true).autocapitalization(.none).keyboardType(.emailAddress)
                }
                .padding()
                
                Button("Forgot Password"){
                    showSheet = true
//                    FirebaseFunctions.forgotPassword(email: userInfo.email){ success in
//                        //come back and add alert if invalid email is entered
//
//
//                        
//                    }
                }.sheet(isPresented: $showSheet, onDismiss: { FirebaseFunctions.forgotPassword(email: userInfo.email){result in}}, content:{
                    VStack{
                        Text("Forgot Password")
                        HStack{
                            Image(systemName: "mail")
                            TextField("email address", text: $userInfo.email).disableAutocorrection(true).autocapitalization(.none).keyboardType(.emailAddress)
                        }
                        Spacer()
                        Button("Send recovery email"){
                            FirebaseFunctions.forgotPassword(email: userInfo.email){ success in
                            }
                            
                        }
                    }
                }).padding()
                
                HStack {
                    Image(systemName: "lock")
                    SecureField("password", text: $userInfo.password)
                }
                .padding()
                
                
                Button("Create Account With Email") {
                    FirebaseFunctions.authenticate(email: userInfo.email, password: userInfo.password) { success in
                        if success{
                            userInfo.loggedin = true
                        }
                    }
                }.frame(width: UIScreen.main.bounds.width - 100)
                .padding()
                .cornerRadius(30)
                .padding(.top, 50)
                
                Button("Log In"){
                    FirebaseFunctions.login(email: userInfo.email, password: userInfo.password) { success in
                        if success{
                            userInfo.loggedin = true
                        }
                    }
                }.frame(width: UIScreen.main.bounds.width - 100)
                .padding()
                .cornerRadius(30)
                .padding()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
