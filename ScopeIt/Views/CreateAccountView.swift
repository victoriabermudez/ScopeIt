//
//  CreateAccountView.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 3/1/22.
//

import SwiftUI

struct CreateAccountView: View {
    
    @EnvironmentObject var userInfo : UserInfo
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.lilac)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                
                HStack {
                    Image(systemName: "mail")
                    TextField("email address", text: $userInfo.email).disableAutocorrection(true).autocapitalization(.none).keyboardType(.emailAddress)
                }.padding(.bottom, 50)
                
                
                HStack {
                    Image(systemName: "lock")
                    SecureField("password", text: $userInfo.password)
                }
                .padding()
                .padding(.top, 50)
                Spacer()
                
                
                Button("Create Account"){
                    FirebaseFunctions.authenticate(email: userInfo.email, password: userInfo.password) { success in
                        if success{
                            userInfo.loggedin = true
                            userInfo.createAcct = false
                        }
                    }
                }.padding()
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.top, 50)
                .padding(.bottom, 10)
                
                Button("Back to Login"){
                    
                            userInfo.loggedin = false
                            userInfo.createAcct = false
                        
                    
                }.padding()
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.top, 50)
                
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
