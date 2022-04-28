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
            GeometryReader{ geo in
                            Image(userInfo.sign.backgroundImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geo.size.width, height: geo.size.height, alignment: .center)}
            
            GeometryReader{ geo in
                            Image(userInfo.sign.backgroundImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geo.size.width, height: geo.size.height+100, alignment: .center)}


            
            VStack{

                VStack{
                

//                Text(userInfo.sign.signName)
//                    .padding()
//                    .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
//                    .background(Color.lilac)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//                    .padding(.top, 50)
            
            Text("Description")
                .font(.title2)
                .foregroundColor(Color.pink)
                .bold()
                .padding(.top)
            Text("\(userInfo.sign.signDescription)")
                .padding(.horizontal)
                .foregroundColor(Color.pink)
                .multilineTextAlignment(.center)
            Text("Compatibility")
                .font(.title2)
                .foregroundColor(Color.pink)
                .bold()
            Text("\(userInfo.sign.signCompatibility)")
                .padding(.horizontal)
                .foregroundColor(Color.pink)              .multilineTextAlignment(.center)

            Text("Lucky Numbers")
                .font(.title2)
                .foregroundColor(Color.pink)
                .bold()
            Text("\(userInfo.sign.luckyNumbers)")
                .padding(.horizontal)
                .foregroundColor(Color.pink)                .multilineTextAlignment(.center)

            Text("Colors")
                .font(.title2)
                .foregroundColor(Color.pink)
                .bold()
            Text("\(userInfo.sign.signColor)")
                .padding(.horizontal)
                .foregroundColor(Color.pink)               .multilineTextAlignment(.center)

            Text("Strengths")
                .font(.title2)
                .foregroundColor(Color.pink)
                .bold()

            }
            VStack{
                Text("\(userInfo.sign.signStrength)")
                    .padding(.horizontal)
                    .foregroundColor(Color.pink)              .multilineTextAlignment(.center)

                Text("Weaknesses")
                .font(.title2).foregroundColor(Color.pink)
                    .bold()
            Text("\(userInfo.sign.signWeakness)")
                .padding(.horizontal)
                .foregroundColor(Color.pink)                .multilineTextAlignment(.center)
            Text("Likes")
                .font(.title2).foregroundColor(Color.pink)
                .bold()
            Text("\(userInfo.sign.signLikes)")
                .padding(.horizontal)
                .foregroundColor(Color.pink)
                .multilineTextAlignment(.center)
            Text("Dislikes")
                .font(.title2).foregroundColor(Color.pink)
                .bold()
            Text("\(userInfo.sign.signDislikes)")
                .padding(.horizontal)
                .padding(.bottom)
                .foregroundColor(Color.pink)
                .multilineTextAlignment(.center)

            
            }
        }
            }
        }
    }
    
    struct SunSignView_Previews: PreviewProvider {
        static var previews: some View {
            SunSignView()
        }
    }

