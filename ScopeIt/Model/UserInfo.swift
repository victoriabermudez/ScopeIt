//
//  UserInfo.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 2/24/22.
//

import SwiftUI

class UserInfo: ObservableObject{
    @Published var email: String
    @Published var firstName: String
    @Published var lastName: String
    //var name: String
    @Published var birthdate: Date = Date()
    @Published var password: String
    @Published var sunSign: sunSign
    @Published var image: UIImage = UIImage(named: "user")!
    
    @Published var loggedin: Bool = false
    @Published var createAcct: Bool = false
    @Published var accountInfo: Bool = false
    
    init(email: String = "", firstName: String = "", lastName: String = "", loggedin: Bool = false, createAcct: Bool = false, accountInfo: Bool = false){
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        //self.name = firstName + " " + lastName
        self.loggedin = loggedin
        self.password = ""
        self.createAcct = createAcct
        
        //called in initializer- call this function with itself
        FirebaseFunctions.getAuthenticatedUser(self)
        
    }
}
