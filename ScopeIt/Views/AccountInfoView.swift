//
//  AccountInfoView.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 3/8/22.
//

import SwiftUI

struct AccountInfoView: View {
    
    @EnvironmentObject var userInfo : UserInfo
    
    @State private var monthSelection = 1
    @State private var monthIsExpanded = false
    
    @State private var dateSelection = 1
    @State private var dateIsExpanded = false
    
    @State private var yearSelection = 1
    @State private var yearIsExpanded = false
    
    @State private var birthDate = Date()
    
    
    @State var months = [1: "January",
                         2: "February",
                         3: "March",
                         4: "April",
                         5: "May",
                         6: "June",
                         7: "July",
                         8: "August",
                         9: "September",
                         10: "October",
                         11: "November",
                         12: "December"]
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.lilac)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Welcome to ScopeIt")
                    .font(.title)
                    .padding()
                    .padding(.top, 200)
                
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
                
                
                Button("Finish"){
                    
                    userInfo.birthdate = birthDate
                    userInfo.loggedin = true
                    userInfo.createAcct = false
                    userInfo.accountInfo = false
                    
                    
                    
                }.padding()
                    .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .padding(.top, 50)
                
                
                Spacer()
                
            }
        }
    }
}

struct AccountInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AccountInfoView()
    }
}

