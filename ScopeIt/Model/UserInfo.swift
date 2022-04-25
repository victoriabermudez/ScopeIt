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
    @Published var birthdate: Date
    @Published var password: String
    @Published var displayHoroscope: Bool
    @Published var displayAdvice: Bool
    @Published var displayAffirmation: Bool
    @Published var displayTarot: Bool
    @Published var displaySunrise: Bool
    @Published var displaySunset: Bool
    @Published var displayMoonrise: Bool
    @Published var displayMoonset: Bool
    @Published var location: String
    @Published var loggedin: Bool = false
    @Published var createAcct: Bool = false
    @Published var accountInfo: Bool = false
    
    var sign: Sign {
        
        if (birthDateComponents.month == 12 && birthDateComponents.day! >= 22) || (birthDateComponents.month == 1 && birthDateComponents.day! <= 20) {
            return Sign(signName : "Capricorn", backgroundColor : "CapricornBG", textColor : "CapricornText", text2Color : "CapricornText2", accentColor : "CapricornAccent", backgroundImage : "Capricorn")
            
        }
        
        else if (birthDateComponents.month == 1 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 2 && birthDateComponents.day! <= 18) {
            
            return Sign(signName : "Aquarius", backgroundColor : "AquariusBG", textColor : "AquariusText", text2Color : "AquariusText2", accentColor : "AquariusAccent", backgroundImage : "Aquarius")
        }
        
        else if (birthDateComponents.month == 2 && birthDateComponents.day! >= 19) || (birthDateComponents.month == 3 && birthDateComponents.day! <= 20) {
            
            return Sign(signName : "Pisces", backgroundColor : "PiscesBG", textColor : "PiscesText", text2Color : "PiscesText2", accentColor : "PiscesAccent", backgroundImage : "Pisces")
        }
        
        else if (birthDateComponents.month == 3 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 4 && birthDateComponents.day! <= 20) {
            
            return Sign(signName : "Aries", backgroundColor : "AriesBG", textColor : "AriesText", text2Color : "AriesText2", accentColor : "AriesAccent", backgroundImage : "Aries")
        }
        
        else if (birthDateComponents.month == 4 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 5 && birthDateComponents.day! <= 20) {
            
            return Sign(signName : "Taurus", backgroundColor : "TaurusBG", textColor : "TaurusText", text2Color : "TaurusText2", accentColor : "TaurusAccent", backgroundImage : "Taurus")
        }
        
        else if (birthDateComponents.month == 5 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 6 && birthDateComponents.day! <= 21) {
            
            return Sign(signName : "Gemini", backgroundColor : "GeminiBG", textColor : "GeminiText", text2Color : "GeminiText2", accentColor : "GeminiAccent", backgroundImage : "Gemini")
        }
        
        else if (birthDateComponents.month == 6 && birthDateComponents.day! >= 22) || (birthDateComponents.month == 7 && birthDateComponents.day! <= 22) {
            
            return Sign(signName : "Cancer", backgroundColor : "CancerBG", textColor : "CancerText", text2Color : "CancerText2", accentColor : "CancerAccent", backgroundImage : "Cancer")
            
        }
        
        else if (birthDateComponents.month == 7 && birthDateComponents.day! >= 23) || (birthDateComponents.month == 8 && birthDateComponents.day! <= 23) {
            
            return Sign(signName : "Leo", backgroundColor : "LeoBG", textColor : "LeoText", text2Color : "LeoText2", accentColor : "LeoAccent", backgroundImage : "Leo")
            
        }
        
        else if (birthDateComponents.month == 8 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 9 && birthDateComponents.day! <= 23) {
            
            return Sign(signName : "Virgo", backgroundColor : "VirgoBG", textColor : "VirgoText", text2Color : "VirgoText2", accentColor : "VirgoAccent", backgroundImage : "Virgo")
        }
        
        else if (birthDateComponents.month == 9 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 10 && birthDateComponents.day! <= 22) {
            
            return Sign(signName : "Libra", backgroundColor : "LibraBG", textColor : "LibraText", text2Color : "LibraText2", accentColor : "LibraAccent", backgroundImage : "Libra")
        }
        
        else if (birthDateComponents.month == 10 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 11 && birthDateComponents.day! <= 21) {
            
            return Sign(signName : "Scorpio", backgroundColor : "ScorpioBG", textColor : "ScorpioText", text2Color : "ScorpioText2", accentColor : "ScorpioAccent", backgroundImage : "Scorpio")
        }
        
        else  {
            //if (birthDateComponents.month == 11 && birthDateComponents.day! >= 23) || (birthDateComponents.month == 12 && birthDateComponents.day! <= 21)
            
            return Sign(signName : "Sagittarius", backgroundColor : "SagittariusBG", textColor : "SagittariusText", text2Color : "SagittariusText2", accentColor : "SagittariusAccent", backgroundImage : "Sagittarius")
        }
        
    }
    var birthDateComponents : DateComponents {
        Calendar.current.dateComponents([.year, .month, .day], from: birthdate)
    }
    
    //@Published var image: UIImage = UIImage(named: "user")!
    
    
    
    init(){

          self.email = ""

          self.firstName = ""

          self.lastName = ""

          //self.name = ""

          self.password = ""

          self.birthdate = Date()

          self.displayHoroscope = true

          self.displayAdvice = true

          self.displayAffirmation = true

          self.displayTarot = true

          self.displaySunrise = true

          self.displaySunset = true

          self.displayMoonrise = true

          self.displayMoonset = true

         // self.cardAmount = 3

          self.location = ""

      }
    

}
