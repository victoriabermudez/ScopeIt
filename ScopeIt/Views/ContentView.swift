//
//  ContentView.swift
//  ScopeIt
//
//  Created by Victoria Bermudez (student LM) on 2/22/22.
//

import SwiftUI
//This class shows the LoginView where you enter a username/password to create an account.
struct ContentView: View {
    
    @EnvironmentObject var userInfo: UserInfo
    
    var body: some View {
        Group{
            if userInfo.createAcct{
                CreateAccountView()
            }
            else if !userInfo.loggedin{
                LoginView()
            } else {
                HomeView()
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
