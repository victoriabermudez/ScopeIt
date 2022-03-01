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
        VStack{
            
            HStack {
                Image(systemName: "mail")
                TextField("email address", text: $userInfo.email).disableAutocorrection(true).autocapitalization(.none).keyboardType(.emailAddress)
            }
            .padding()
            Button("Create Account"){
                FirebaseFunctions.authenticate(email: userInfo.email, password: userInfo.password) { success in
                    if success{
                        userInfo.loggedin = true
                    }
                }
            }
            HStack {
                Image(systemName: "lock")
                SecureField("password", text: $userInfo.password)
            }
            .padding()
            .padding(.top, 50)
        }
    }
    
    struct CreateAccountView_Previews: PreviewProvider {
        static var previews: some View {
            CreateAccountView()
        }
    }
}
