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
    
    init(){
        self.signName = "khg"
        self.signDescription = ""
        self.signCompatibility = [:]

    }
    
    init(signName : String, signDescription : String, signCompatibility : [String : Bool]){
        self.signName = signName
        self.signDescription = signDescription
        self.signCompatibility = signCompatibility
        
    }

}


//




