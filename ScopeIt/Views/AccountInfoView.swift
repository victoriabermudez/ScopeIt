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
                Spacer()
                
                HStack {
                    Image(systemName: "person.circle.fill")
                    Text("Name")
                    TextField("first name", text: $userInfo.firstName).disableAutocorrection(true).autocapitalization(.none)
                    TextField("last name", text: $userInfo.lastName).disableAutocorrection(true).autocapitalization(.none)
                }.padding()
                    .padding(.top, 100)
                    .padding(.bottom, 10)
                
                
                HStack {
                    Image(systemName: "calendar.circle.fill")
                    
                    Text("Birthdate")
                    
                    VStack(alignment: .leading) {
                        DisclosureGroup("\(months[monthSelection]!)", isExpanded: $monthIsExpanded) {
                            ScrollView{
                                VStack(alignment: .leading, spacing: 15){
                                    ForEach(1...12, id: \.self) { num in
                                        Text("\(months[num]!)")
                                            .onTapGesture {
                                                self.monthSelection = num
                                                self.monthIsExpanded.toggle()
                                            }
                                    }
                                }
                            }
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        DisclosureGroup("\(dateSelection)", isExpanded: $dateIsExpanded) {
                            ScrollView{
                                VStack{
                                    ForEach(1...31, id: \.self) { num in
                                        Text("\(num)")
                                            .onTapGesture {
                                                self.dateSelection = num
                                                withAnimation{
                                                    self.dateIsExpanded.toggle()
                                                }
                                            }
                                    }
                                }
                            }
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        DisclosureGroup("\(yearSelection)", isExpanded: $yearIsExpanded) {
                            ScrollView{
                                VStack{
                                    ForEach((1900...2022), id: \.self) { num in
                                        Text("\(num)")
                                            .onTapGesture {
                                                self.yearSelection = num
                                                self.yearIsExpanded.toggle()
                                            }
                                    }
                                }
                            }
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
