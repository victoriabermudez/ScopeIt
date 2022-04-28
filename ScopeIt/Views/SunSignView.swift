//
//  SunSignView.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 4/21/22.
//

import SwiftUI



struct SunSignView: View {
    
    @EnvironmentObject var userInfo: UserInfo
    //@State var backgroundColor : Color = Color."\(userInfo.sign.signName)"+"Accent"
    
    var body: some View {
        
        ZStack{
            
            Image("\(userInfo.sign.backgroundImage)")
            
            VStack{
                Text(userInfo.sign.signName)
                    .padding()
                    .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
//                    .background(Color.userInfo.sign.backgroundColor)
//                    .foregroundColor(Color.userInfo.sign.textColor)
                    .cornerRadius(10)
                    .padding(.top, 50)
            
            Text("Description" + "\(userInfo.sign.signDescription)")
                .bold()
//                .background(Color."\(userInfo.sign.signName)"+"Accent")
//                if userInfo.sign.signName = "Aquarius" {
//                    .background(Color.AquariusAccent)
//                    .foregroundColor(Color.AquariusText)
//                }
            Text("Compatibility" + userInfo.sign.signCompatibility)
                .bold()
            Text("Lucky Numbers" + userInfo.sign.luckyNumbers)
//                .foregroundColor(Color.userInfo.sign.textColor)
                .bold()
            Text("Colors" + userInfo.sign.signColor)
//                .foregroundColor(Color.userInfo.sign.textColor)
                .bold()
            Text("Strengths" + userInfo.sign.signStrength)
//                .foregroundColor(Color.userInfo.sign.textColor)
                .bold()
            Text("Weaknesses" + userInfo.sign.signWeakness)
//                .foregroundColor(Color.userInfo.sign.textColor)
                .bold()
            Text("Likes" + userInfo.sign.signLikes)
//                .foregroundColor(Color.userInfo.sign.textColor)
                .bold()
            Text("Dislikes" + userInfo.sign.signDislikes)
//                .foregroundColor(Color.userInfo.sign.textColor)
                .bold()
                
                Spacer()
            }
        }
    }
    
    struct SunSignView_Previews: PreviewProvider {
        static var previews: some View {
            SunSignView()
        }
    }
}
