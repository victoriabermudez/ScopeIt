//
//  ContentView.swift
//  ScopeIt
//
//  Created by Victoria Bermudez (student LM) on 2/22/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userInfo: UserInfo
    
    var body: some View {
                Group{
                    if userInfo.createAcct{
                        CreateAccountView()
                    } else if userInfo.accountInfo{
                        AccountInfoView()
                    } else if !userInfo.loggedin{
                        LoginView()
                    } else {
                        HomeView()
                    }
               }
//        DailyView()
        //HomeView()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
