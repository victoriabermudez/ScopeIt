//
//  sunSign.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 3/18/22.
//

import Foundation

//var comps = DateComponents(year: 2006, month: 12, day: 12)
//let date = Calendar.current.date(from: comps)!

class Sign : ObservableObject {
    
    @Published var signName : String
    @Published var signDescription : String
    @Published var signCompatibility : String
    @Published var backgroundColor : String
    @Published var textColor : String
    @Published var text2Color : String
    @Published var accentColor : String
    @Published var backgroundImage : String
    @Published var luckyNumbers : String
    @Published var signColor : String
    @Published var signStrength : String
    @Published var signWeakness : String
    @Published var signLikes : String
    @Published var signDislikes : String

    init(signName : String, backgroundColor : String, textColor : String, text2Color : String, accentColor : String, backgroundImage : String, signDescription : String, signCompatibility : String, luckyNumbers : String, signColor : String, signStrength : String, signWeakness : String, signLikes : String, signDislikes : String){
        self.signName = signName
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.text2Color = text2Color
        self.accentColor = accentColor
        self.backgroundImage = backgroundImage
        self.signDescription = signDescription
        self.signCompatibility = signCompatibility
        self.luckyNumbers = luckyNumbers

        self.signColor = signColor

        self.signStrength = signStrength

        self.signWeakness = signWeakness

        self.signLikes = signLikes

        self.signDislikes = signDislikes
    }
    
//    init(signName : String, signDescription : String, signCompatibility : String, luckyNumbers : String, signColor : String, signStrength : String, signWeakness : String, signLikes : String, signDislikes : String){
//
//        self.signName = signName
//
//        self.signDescription = signDescription
//
//        self.signCompatibility = signCompatibility
//
//        self.luckyNumbers = luckyNumbers
//
//        self.signColor = signColor
//
//        self.signStrength = signStrength
//
//        self.signWeakness = signWeakness
//
//        self.signLikes = signLikes
//
//        self.signDislikes = signDislikes
//
//    }

}


//




