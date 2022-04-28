//
//  ProfileView.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 3/14/22.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var userInfo : UserInfo
    @EnvironmentObject var fetchDataHoroscope : FetchDataHoroscope
    //@State private var birthDate = Date()
    
    
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(Color.lilac2)
                .edgesIgnoringSafeArea(.all)
        VStack{

            
            HStack {
                Image(systemName: "person.circle.fill").foregroundColor(Color.teal)
                Text("Name")
                    .font(.title3).foregroundColor(Color.teal)
                Spacer()
                TextField("first name", text: $userInfo.firstName).disableAutocorrection(true).autocapitalization(.none).foregroundColor(Color.teal)
                Spacer()
                TextField("last name", text: $userInfo.lastName).disableAutocorrection(true).autocapitalization(.none).foregroundColor(Color.teal)
            }.padding()
                .padding(.top, 75)
                .padding(.bottom, 10)
            
            
            
            HStack {
                Image(systemName: "calendar.circle.fill").foregroundColor(Color.teal)
                
                Text("Birthdate")
                    .font(.title3).foregroundColor(Color.teal)
                DatePicker(selection: $userInfo.birthdate, in: ...Date(), displayedComponents: .date) {
                    
                }.onDisappear {
                    fetchDataHoroscope.decode(url : URL(string: "https://ohmanda.com/api/horoscope/" + "\(userInfo.sign.signName.lowercased())")!)
                }
                
            }.padding()
                .padding(.top, 10)
                .padding(.bottom, 100)
            .foregroundColor(Color.teal)
//            TextField("location", text: $userInfo.location).disableAutocorrection(true).autocapitalization(.none)
//
//                                .padding()
//
//                                .padding(.top, 10)
//
//                                .padding(.bottom, 100)
            
            
            //            HStack {
            //                Image(systemName: "calendar.circle.fill")
            //                Spacer()
            //                Text("Birthdate")
            //                    .font(.title3)
            //                Spacer()
            //                Text("\(userInfo.birthDateComponents.month!)")
            //                Text("\(userInfo.birthDateComponents.day!)")
            //                Text(verbatim: "\(userInfo.birthDateComponents.year!)")
            //
            //                //                DatePicker(selection: $userInfo.birthdate, in: ...Date(), displayedComponents: .date) {
            //                //                }
            //                //
            //
            //            }.padding()
            //                .padding(.top, 10)
            //                .padding(.bottom, 100)
            
            HStack{
                Text(userInfo.sign.signName)
                    .padding()
                    .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
                    .background(Color.lilac)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.top, 50)
            }
            
            Button("Log Out"){
                
                userInfo.loggedin = false
                userInfo.createAcct = false
//                userInfo.accountInfo = false
                
                
                
            }.padding()
                .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
                .background(Color.pink)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.top, 50)
        }
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
