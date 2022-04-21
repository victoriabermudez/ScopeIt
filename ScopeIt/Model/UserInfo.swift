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
    @Published var sign: Sign
    @Published var birthDateComponents : DateComponents = DateComponents()
    
    //@Published var image: UIImage = UIImage(named: "user")!
    
    @Published var loggedin: Bool = false
    @Published var createAcct: Bool = false
    @Published var accountInfo: Bool = false
    
    init(){
        self.email = ""
        self.firstName = ""
        self.lastName = ""
        //self.name = ""
        self.password = ""
        self.sign = Sign()
        self.birthDateComponents = Calendar.current.dateComponents([.year, .month, .day], from: birthdate)
        
        if (birthDateComponents.month == 12 && birthDateComponents.day! >= 22) || (birthDateComponents.month == 1 && birthDateComponents.day! <= 20) {
            self.sign.signName = "Capricorn"
        }
        
        else if (birthDateComponents.month == 1 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 2 && birthDateComponents.day! <= 18) {
            self.sign.signName = "Aquarius"
        }
        
        else if (birthDateComponents.month == 2 && birthDateComponents.day! >= 19) || (birthDateComponents.month == 3 && birthDateComponents.day! <= 20) {
            self.sign.signName = "Pisces"
        }
        
        else if (birthDateComponents.month == 3 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 4 && birthDateComponents.day! <= 20) {
            self.sign.signName = "Aries"
        }
        
        else if (birthDateComponents.month == 4 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 5 && birthDateComponents.day! <= 20) {
            self.sign.signName = "Taurus"
        }
        
        else if (birthDateComponents.month == 5 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 6 && birthDateComponents.day! <= 21) {
            self.sign.signName = "Gemini"
        }
        
        else if (birthDateComponents.month == 6 && birthDateComponents.day! >= 22) || (birthDateComponents.month == 7 && birthDateComponents.day! <= 22) {
            self.sign.signName = "Cancer"
        }
        
        else if (birthDateComponents.month == 7 && birthDateComponents.day! >= 23) || (birthDateComponents.month == 8 && birthDateComponents.day! <= 23) {
            self.sign.signName = "Leo"
        }
        
        else if (birthDateComponents.month == 8 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 9 && birthDateComponents.day! <= 23) {
            self.sign.signName = "Virgo"
        }
        
        else if (birthDateComponents.month == 9 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 10 && birthDateComponents.day! <= 22) {
            self.sign.signName = "Libra"
        }
        
        else if (birthDateComponents.month == 10 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 11 && birthDateComponents.day! <= 21) {
            self.sign.signName = "Scorpio"
        }
        
        else if (birthDateComponents.month == 11 && birthDateComponents.day! >= 23) || (birthDateComponents.month == 12 && birthDateComponents.day! <= 21) {
            self.sign.signName = "Sagittarius"
        }
        
        print(sign.signName)
        
    }
    
//    init(email: String = "", firstName: String = "", lastName: String = "", loggedin: Bool = false, createAcct: Bool = false, accountInfo: Bool = false, sign : String = ""){
//
//        self.email = email
//        self.firstName = firstName
//        self.lastName = lastName
//        //self.name = firstName + " " + lastName
//        self.password = ""
//        self.loggedin = loggedin
//        self.accountInfo = accountInfo
//        self.createAcct = createAcct
//        self.birthDateComponents = Calendar.current.dateComponents([.month, .day], from: Date())
//        self.sign = Sign()
//
//        if (birthDateComponents.month == 12 && birthDateComponents.day! >= 22) || (birthDateComponents.month == 1 && birthDateComponents.day! <= 20) {
//            self.sign.signName = "Capricorn"
//        }
//
//        else if (birthDateComponents.month == 1 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 2 && birthDateComponents.day! <= 18) {
//            self.sign.signName = "Aquarius"
//        }
//
//        else if (birthDateComponents.month == 2 && birthDateComponents.day! >= 19) || (birthDateComponents.month == 3 && birthDateComponents.day! <= 20) {
//            self.sign.signName = "Pisces"
//        }
//
//        else if (birthDateComponents.month == 3 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 4 && birthDateComponents.day! <= 20) {
//            self.sign.signName = "Aries"
//        }
//
//        else if (birthDateComponents.month == 4 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 5 && birthDateComponents.day! <= 20) {
//            self.sign.signName = "Taurus"
//        }
//
//        else if (birthDateComponents.month == 5 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 6 && birthDateComponents.day! <= 21) {
//            self.sign.signName = "Gemini"
//        }
//
//        else if (birthDateComponents.month == 6 && birthDateComponents.day! >= 22) || (birthDateComponents.month == 7 && birthDateComponents.day! <= 22) {
//            self.sign.signName = "Cancer"
//        }
//
//        else if (birthDateComponents.month == 7 && birthDateComponents.day! >= 23) || (birthDateComponents.month == 8 && birthDateComponents.day! <= 23) {
//            self.sign.signName = "Leo"
//        }
//
//        else if (birthDateComponents.month == 8 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 9 && birthDateComponents.day! <= 23) {
//            self.sign.signName = "Virgo"
//        }
//
//        else if (birthDateComponents.month == 9 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 10 && birthDateComponents.day! <= 22) {
//            self.sign.signName = "Libra"
//        }
//
//        else if (birthDateComponents.month == 10 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 11 && birthDateComponents.day! <= 21) {
//            self.sign.signName = "Scorpio"
//        }
//
//        else if (birthDateComponents.month == 11 && birthDateComponents.day! >= 23) || (birthDateComponents.month == 12 && birthDateComponents.day! <= 21) {
//            self.sign.signName = "Sagittarius"
//        }
//
//        //print(sign.signName)
//
//
//
//        //called in initializer- call this function with itself
//        FirebaseFunctions.getAuthenticatedUser(self)
//
//    }
//
//    func setSignName(){
//        if (birthDateComponents.month == 12 && birthDateComponents.day! >= 22) || (birthDateComponents.month == 1 && birthDateComponents.day! <= 20) {
//            self.sign.signName = "Capricorn"
//        }
//
//        else if (birthDateComponents.month == 1 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 2 && birthDateComponents.day! <= 18) {
//            self.sign.signName = "Aquarius"
//        }
//
//        else if (birthDateComponents.month == 2 && birthDateComponents.day! >= 19) || (birthDateComponents.month == 3 && birthDateComponents.day! <= 20) {
//            self.sign.signName = "Pisces"
//        }
//
//        else if (birthDateComponents.month == 3 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 4 && birthDateComponents.day! <= 20) {
//            self.sign.signName = "Aries"
//        }
//
//        else if (birthDateComponents.month == 4 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 5 && birthDateComponents.day! <= 20) {
//            self.sign.signName = "Taurus"
//        }
//
//        else if (birthDateComponents.month == 5 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 6 && birthDateComponents.day! <= 21) {
//            self.sign.signName = "Gemini"
//        }
//
//        else if (birthDateComponents.month == 6 && birthDateComponents.day! >= 22) || (birthDateComponents.month == 7 && birthDateComponents.day! <= 22) {
//            self.sign.signName = "Cancer"
//        }
//
//        else if (birthDateComponents.month == 7 && birthDateComponents.day! >= 23) || (birthDateComponents.month == 8 && birthDateComponents.day! <= 23) {
//            self.sign.signName = "Leo"
//        }
//
//        else if (birthDateComponents.month == 8 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 9 && birthDateComponents.day! <= 23) {
//            self.sign.signName = "Virgo"
//        }
//
//        else if (birthDateComponents.month == 9 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 10 && birthDateComponents.day! <= 22) {
//            self.sign.signName = "Libra"
//        }
//
//        else if (birthDateComponents.month == 10 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 11 && birthDateComponents.day! <= 21) {
//            self.sign.signName = "Scorpio"
//        }
//
//        else if (birthDateComponents.month == 11 && birthDateComponents.day! >= 23) || (birthDateComponents.month == 12 && birthDateComponents.day! <= 21) {
//            self.sign.signName = "Sagittarius"
//        }
//
//    }
}
