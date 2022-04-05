////
////  sunSign.swift
////  ScopeIt
////
////  Created by Michelle Kelly (student LM) on 3/18/22.
////
//
//import Foundation
//
////var comps = DateComponents(year: 2006, month: 12, day: 12)
////let date = Calendar.current.date(from: comps)!
//
//struct Sign{
//    
//    var signName : String
//    var signDescription : String
//    var signCompatibility : [String: Bool] = [:]
//    
//    static func getSunSign(_ userInfo: UserInfo){
//        let birthDateComponents = Calendar.current.dateComponents([.month, .day], from: userInfo.birthdate)
//        
//        //capricorn (dec 22-jan 20)
//        if  (birthDateComponents.month == 12 && birthDateComponents.day! >= 22) || (birthDateComponents.month == 1 && birthDateComponents.day! <= 20) {
//            userInfo.sign.signName = "Capricorn"
//        }
//        
//        else if (birthDateComponents.month == 1 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 2 && birthDateComponents.day! <= 18) {
//            userInfo.sign.signName = "Aquarius"
//        }
//        
//        else if (birthDateComponents.month == 2 && birthDateComponents.day! >= 19) || (birthDateComponents.month == 3 && birthDateComponents.day! <= 20) {
//            userInfo.sign.signName = "Pisces"
//        }
//        
//        else if (birthDateComponents.month == 3 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 4 && birthDateComponents.day! <= 20) {
//            userInfo.sign.signName = "Aries"
//        }
//        
//        }//end func
//        
//   //
//
//    
//    
//}
//
//struct Capricorn {
//    
//}
//
////switch some value to consider {
////case value 1:
////    respond to value 1
////case value 2,
////     value 3:
////    respond to value 2 or 3
////default:
////    otherwise, do something else
////}
