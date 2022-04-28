//
//  LoginView.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 2/24/22.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var userInfo : UserInfo
    @State private var showForgotPasswordSheet = false
    @State private var showIncorrectPasswordAlert = false
    
    var body: some View {
        
        ZStack{
            //Sets the background color to lilac
            Rectangle()
                .foregroundColor(Color.lilac)
                .edgesIgnoringSafeArea(.all)
            VStack{
                //Displays the logo at the top of the Vstack
                Image("ScopeItLogo")
                    .resizable()
                    .scaledToFit()
                HStack {
                    //Displays the mail
                    Image(systemName: "mail")
                        .foregroundColor(Color.lilac2)
                    TextField("email address", text: $userInfo.email).disableAutocorrection(true).autocapitalization(.none).keyboardType(.emailAddress).foregroundColor(Color.lilac2)
                    
                }
                .padding()
                
                Button("Forgot Password"){
                    showForgotPasswordSheet = true
                }.sheet(isPresented: $showForgotPasswordSheet, onDismiss: { FirebaseFunctions.forgotPassword(email: userInfo.email){result in}}, content:{
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color.lilac)
                            .edgesIgnoringSafeArea(.all)
                        
                        VStack{
                            Spacer()
                            Text("Forgot Password")
                                .padding()
                                .frame(width: UIScreen.main.bounds.width - 100)
                                .foregroundColor(Color.lilac2)
                                .padding(.top, 50)
                                .padding(.bottom, 10)
                            Spacer()
                            HStack{
                                Image(systemName: "mail")
                                    .foregroundColor(Color.lilac2)
                                TextField("email address", text: $userInfo.email).disableAutocorrection(true).autocapitalization(.none).keyboardType(.emailAddress)
                            }
                            .padding()
                            Spacer()
                            Button("Send recovery email"){
                                FirebaseFunctions.forgotPassword(email: userInfo.email){ success in
                                }
                                //come back and add alert if invalid email is entered
                                showForgotPasswordSheet = false
                            }
                            .padding()
                            .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
                            .background(Color.lilac2)
                            .foregroundColor(Color.teal)
                            .cornerRadius(10)
                            .padding(.top, 05)
                            .padding(.bottom, 10)
                            Spacer()
                        }
                        .edgesIgnoringSafeArea(.all)
                    }
                }).padding()
                    .font(.system(size: 15))
                    .foregroundColor(Color.teal)
                    .cornerRadius(10)
                
                HStack {
                    Image(systemName: "lock").foregroundColor(Color.lilac2)
                    SecureField("password", text: $userInfo.password).foregroundColor(Color.lilac2)
                }
                .padding()
                .padding(.top, 20)
                
                
                
                
                Button("Log In"){
                    FirebaseFunctions.login(email: userInfo.email, password: userInfo.password) { success in
                        if success{
                            userInfo.loggedin = true
                        }
                        else{
                            showIncorrectPasswordAlert = true
                        }
                    }
                }.alert(isPresented: $showIncorrectPasswordAlert){
                    Alert(
                        title: Text("Incorrect Credentials"),
                        message: Text("Try again or click Forgot Password"),
                        dismissButton: .default(Text("Back to Login"))
                    )
                }
                
                .padding()
                .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
                .background(Color.lilac2)
                .foregroundColor(Color.teal)
                .cornerRadius(10)
                .padding()
                .cornerRadius(30)
                .padding()
                
                
                Button("Create An Account") {
                    userInfo.createAcct = true
                }.padding()
                    .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
                    .background(Color.lilac2)
                    .foregroundColor(Color.teal)
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
