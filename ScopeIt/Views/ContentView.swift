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
       LoginView()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
