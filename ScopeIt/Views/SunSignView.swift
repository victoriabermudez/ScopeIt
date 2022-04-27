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
            
            VStack{
                Text(userInfo.sign.signName)
                    .padding()
                    .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
                    .background(Color.lilac)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.top, 50)
                
                Text("Description" + "\(userInfo.sign.signDescription)")
                Text("Compatibility" + userInfo.sign.signCompatibility)
                Text("Lucky Numbers" + userInfo.sign.luckyNumbers)
                Text("Colors" + userInfo.sign.signColor)
                Text("Strengths" + userInfo.sign.signStrength)
                Text("Weaknesses" + userInfo.sign.signWeakness)
                Text("Likes" + userInfo.sign.signLikes)
                Text("Dislikes" + userInfo.sign.signDislikes)
            }
        }
    }
    
    struct SunSignView_Previews: PreviewProvider {
        static var previews: some View {
            SunSignView()
        }
    }
}
