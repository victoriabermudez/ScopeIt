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
    
    //@State private var birthDate = Date()
    
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
    
//    func date(from: DateComponents) -> Date{
//        var comps = DateComponents()
//        comps.day = 21
//        comps.month = 10
//        comps.year = 2020
//
//        let date = Calendar.current.date(from: comps)!
//        return date
//    }
//
//    @State var selectionDate = date(from: birthDate)
//
//
//
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
                    .foregroundColor(Color.teal)
                    .background(Color.lilac2)
                
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
                        .foregroundColor(Color.teal)
                        .background(Color.lilac2)
                        .font(.title3)
                    DatePicker(selection: $userInfo.birthdate, in: ...Date(), displayedComponents: .date) {
                        
                    }
                    
                }.padding()
                    .padding(.top, 10)
                    .padding(.bottom, 100)
                
//                switch some value to consider {
//                case value 1:
//                    respond to value 1
//                case value 2,
//                     value 3:
//                    respond to value 2 or 3
//                default:
//                    otherwise, do something else
//                }

                
                
                Button("Finish"){
                    
                
                    userInfo.loggedin = true
                    userInfo.createAcct = false
                    
                    
                    
                }.padding()
                    .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
                    .background(Color.lilac2)
                .foregroundColor(Color.teal)
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

