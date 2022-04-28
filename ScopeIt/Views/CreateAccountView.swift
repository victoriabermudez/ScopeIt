//
//  CreateAccountView.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 3/1/22.
//

import SwiftUI

struct CreateAccountView: View {
    
    @EnvironmentObject var userInfo : UserInfo
    //@State var userInfo : UserInfo = UserInfo()
    
    @State private var showInsufficientPasswordAlert = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.lilac)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Image("ScopeItLogo")
                    .resizable()
                    .scaledToFit()
                HStack {
                    Image(systemName: "mail").foregroundColor(Color.teal)
                    TextField("email address", text: $userInfo.email).disableAutocorrection(true).autocapitalization(.none).keyboardType(.emailAddress)
                }.padding()
                    .padding(.top, 100)
                    .padding(.bottom, 10)
                .foregroundColor(Color.teal)
                
                HStack {
                    Image(systemName: "lock").foregroundColor(Color.teal)
                    SecureField("password", text: $userInfo.password).foregroundColor(Color.teal)
                }
                .padding()
                .padding(.top, 10)
                Spacer()
                
                
                Button("Create Account"){
                    FirebaseFunctions.authenticate(email: userInfo.email, password: userInfo.password) { success in
                        if success{
                            HomeView()
                            userInfo.loggedin = false
                            userInfo.createAcct = false
//                            userInfo.accountInfo = true
                        }
                        else{
                            showInsufficientPasswordAlert = true

                        }
                    }
                    
                }.alert(isPresented: $showInsufficientPasswordAlert){
                    Alert(
                        title: Text("Insufficient Password"),
                        message: Text("The password must be 6 characters long or more"),
                        dismissButton: .default(Text("Try again"))
                        )
                }
                .padding()
                    .frame(width: UIScreen.main.bounds.width - 100)
                    .background(Color.teal)
                    .foregroundColor(Color.lilac2)
                    .cornerRadius(10)
                    .padding(.top, 50)
                
                Button("Back to Login"){
                    
                    userInfo.loggedin = false
                    userInfo.createAcct = false
                    
                    
                }.padding()
                    .font(.system(size: 15))
                    .frame(width: UIScreen.main.bounds.width - 200)
                .foregroundColor(Color.lilac2)
                    .padding(.top, 10)
                
                Spacer()
                
            }
        }
    }
    
    struct CreateAccountView_Previews: PreviewProvider {
        static var previews: some View {
            CreateAccountView()
        }
    }
}
