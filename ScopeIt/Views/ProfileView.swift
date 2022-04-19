//
//  ProfileView.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 3/14/22.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var userInfo : UserInfo
    @State private var birthDate = Date()
    
    
    
    var body: some View {
        
        VStack{
            HStack {
                Image(systemName: "person.circle.fill")
                Text("Name")
                    .font(.title3)
                Spacer()
                TextField("first name", text: $userInfo.firstName).disableAutocorrection(true).autocapitalization(.none)
                Spacer()
                TextField("last name", text: $userInfo.lastName).disableAutocorrection(true).autocapitalization(.none)
            }.padding()
                .padding(.top, 50)
                .padding(.bottom, 10)
            
            
            HStack {
                Image(systemName: "calendar.circle.fill")
                
//                Text("Birthdate")
//                    .font(.title3)
//                DatePicker(selection: $userInfo.birthdate, in: ...Date(), displayedComponents: .date) {
//                }
                
                
            }.padding()
                .padding(.top, 10)
                .padding(.bottom, 100)
            
            
            Text(userInfo.sign.signName)
                .padding()
                    .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
                    .background(Color.lilac)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.top, 50)
            
            Button("Log Out"){
                
                userInfo.loggedin = false
                userInfo.createAcct = false
                userInfo.accountInfo = false
                
                
                
            }.padding()
                .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.top, 50)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
