//
//  SunSignView.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 4/21/22.
//

import SwiftUI



struct SunSignView: View {
    
    @EnvironmentObject var userInfo: UserInfo
    
    var body: some View {
        
        ZStack{
        
            Image("\(userInfo.sign.backgroundImage)")
            
        Text(userInfo.sign.signName)
            .padding()
            .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
            .background(Color.lilac)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.top, 50)
    }
    }
}

struct SunSignView_Previews: PreviewProvider {
    static var previews: some View {
        SunSignView()
    }
}
