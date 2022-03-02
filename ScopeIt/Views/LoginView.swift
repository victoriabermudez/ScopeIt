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
                .foregroundColor(Color.lilac)
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                HStack {
                    Image(systemName: "mail")
                    TextField("email address", text: $userInfo.email).disableAutocorrection(true).autocapitalization(.none).keyboardType(.emailAddress)
                }
                .padding()
                
                Button("Forgot Password"){
                    showSheet = true
                }.sheet(isPresented: $showSheet, onDismiss: { FirebaseFunctions.forgotPassword(email: userInfo.email){result in}}, content:{
                    VStack{
                        Spacer()
                        Text("Forgot Password")
                        Spacer()
                        HStack{
                            Image(systemName: "mail")
                            TextField("email address", text: $userInfo.email).disableAutocorrection(true).autocapitalization(.none).keyboardType(.emailAddress)
                        }
                        Spacer()
                        Button("Send recovery email"){
                            FirebaseFunctions.forgotPassword(email: userInfo.email){ success in
                            }
                            //come back and add alert if invalid email is entered
                            showSheet = false
                        }
                        Spacer()
                    }
                    .edgesIgnoringSafeArea(.all)
                }).padding()
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                HStack {
                    Image(systemName: "lock")
                    SecureField("password", text: $userInfo.password)
                }
                .padding()
                .padding(.top, 50)
                
                
                
                
                Button("Log In"){
                    FirebaseFunctions.login(email: userInfo.email, password: userInfo.password) { success in
                        if success{
                            userInfo.loggedin = true
                        }
                    }
                }.padding()
                .frame(width: UIScreen.main.bounds.width - 100)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
                .cornerRadius(30)
                .padding()
                
                
                Button("Create An Account") {
                    userInfo.createAcct = true
                }.padding()
                .frame(width: UIScreen.main.bounds.width - 100)
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(10)
                .padding()
                .cornerRadius(30)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
