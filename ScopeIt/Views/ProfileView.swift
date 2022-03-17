//
//  ProfileView.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 3/14/22.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var userInfo : UserInfo

    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
            Text("Name")
                .font(.title3)
            TextField("first name", text: $userInfo.firstName).disableAutocorrection(true).autocapitalization(.none)
            TextField("last name", text: $userInfo.lastName).disableAutocorrection(true).autocapitalization(.none)
        }.padding()
            .padding(.top, 50)
            .padding(.bottom, 10)
        
        
        HStack {
            Image(systemName: "calendar.circle.fill")
            
            Text("Birthdate")
                .font(.title3)
            DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
            }
            
        }.padding()
            .padding(.top, 10)
            .padding(.bottom, 100)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
