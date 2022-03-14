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

    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.lilac)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                
                HStack {
                    Image(systemName: "person.circle.fill")
                    TextField("first name", text: $userInfo.firstName).disableAutocorrection(true).autocapitalization(.none)
                    TextField("last name", text: $userInfo.lastName).disableAutocorrection(true).autocapitalization(.none)
                }.padding()
                    .padding(.top, 100)
                    .padding(.bottom, 10)
                
                
                HStack {
                    Image(systemName: "calendar.circle.fill")
                    VStack {
                        DisclosureGroup("Month") {
                            Text("January")
                            Text("February")
                            Text("March")
                            Text("April")
                            Text("May")
                            Text("June")
                            Text("July")
                            Text("August")
                            Text("September")
                            Text("October")
                            Text("November")
                            Text("December")
                        }
                        
                    }
                    
                }
                .padding()
                .padding(.top, 10)
                Spacer()
                
                
                
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
