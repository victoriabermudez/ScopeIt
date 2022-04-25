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
    @Published var signCompatibility : [String : Bool]
    @Published var backgroundColor : String
    @Published var textColor : String
    @Published var text2Color : String
    @Published var accentColor : String
    @Published var backgroundImage : String


    init(signName : String, backgroundColor : String, textColor : String, text2Color : String, accentColor : String, backgroundImage : String){
        self.signName = signName
        self.signDescription = ""
        self.signCompatibility = [:]
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.text2Color = text2Color
        self.accentColor = accentColor
        self.backgroundImage = backgroundImage

    }
    
    

}


//




