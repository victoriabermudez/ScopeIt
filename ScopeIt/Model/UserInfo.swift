//
//  UserInfo.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 2/24/22.
//

import SwiftUI

class UserInfo: ObservableObject{
    var email: String
    var name: String
    var password: String
    @Published var image: UIImage = UIImage(named: "user")!
    @Published var loggedin: Bool = false
    @Published var createAcct: Bool = false
    
    init(email: String = "", name: String = "", loggedin: Bool = false, createAcct: Bool = false){
        self.email = email
        self.name = name
        self.loggedin = loggedin
        self.password = ""
        self.createAcct = createAcct
        
        //called in initializer- call this function with itself
        FirebaseFunctions.getAuthenticatedUser(self)
        
    }
}
