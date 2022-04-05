//
//  sunSign.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 3/18/22.
//

import Foundation

//var comps = DateComponents(year: 2006, month: 12, day: 12)
//let date = Calendar.current.date(from: comps)!

let userInfo : UserInfo = UserInfo()

struct Sign{
    
    var signName : String
    var signDescription : String
    var signCompatibility : [String: Bool]
    
    
    //static func getSunSign(_ userInfo: UserInfo){
    init(signName: String = "", signDescription:String = "", signCompatibility : [String: Bool] = [:]){
        
        self.signName = signName
        self.signDescription = signDescription
        self.signCompatibility = signCompatibility

        let birthDateComponents = Calendar.current.dateComponents([.month, .day], from: userInfo.birthdate)
        
        print(birthDateComponents)
        
        //capricorn (dec 22-jan 20)
        if  (birthDateComponents.month == 12 && birthDateComponents.day! >= 22) || (birthDateComponents.month == 1 && birthDateComponents.day! <= 20) {
            self.signName = "Capricorn"
        }
        
        else if (birthDateComponents.month == 1 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 2 && birthDateComponents.day! <= 18) {
            self.signName = "Aquarius"
        }
        
        else if (birthDateComponents.month == 2 && birthDateComponents.day! >= 19) || (birthDateComponents.month == 3 && birthDateComponents.day! <= 20) {
            self.signName = "Pisces"
        }
        
        else if (birthDateComponents.month == 3 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 4 && birthDateComponents.day! <= 20) {
            self.signName = "Aries"
        }
        
        else if (birthDateComponents.month == 4 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 5 && birthDateComponents.day! <= 20) {
            self.signName = "Taurus"
        }
        
        else if (birthDateComponents.month == 5 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 6 && birthDateComponents.day! <= 21) {
            self.signName = "Gemini"
        }
        
        else if (birthDateComponents.month == 6 && birthDateComponents.day! >= 22) || (birthDateComponents.month == 7 && birthDateComponents.day! <= 22) {
            self.signName = "Cancer"
        }
        
        else if (birthDateComponents.month == 7 && birthDateComponents.day! >= 23) || (birthDateComponents.month == 8 && birthDateComponents.day! <= 23) {
            self.signName = "Leo"
        }
        
        else if (birthDateComponents.month == 8 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 9 && birthDateComponents.day! <= 23) {
            self.signName = "Virgo"
        }
        
        else if (birthDateComponents.month == 9 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 10 && birthDateComponents.day! <= 22) {
            self.signName = "Libra"
        }
        
        else if (birthDateComponents.month == 10 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 11 && birthDateComponents.day! <= 21) {
            self.signName = "Scorpio"
        }
        
        else if (birthDateComponents.month == 11 && birthDateComponents.day! >= 23) || (birthDateComponents.month == 12 && birthDateComponents.day! <= 21) {
            self.signName = "Sagittarius"
        }
        
        print(userInfo.sign.signName)
        
    }//end func
    
    
    
    //
    
    
    
}
