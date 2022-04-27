//
//  CreateAccountView.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 3/1/22.
//

import SwiftUI

struct CreateAccountView: View {
    
    @EnvironmentObject var userInfo : UserInfo
    @EnvironmentObject var fetchDataHoroscope : FetchDataHoroscope
    
    @State private var showInsufficientPasswordAlert = false
    @State private var creatingAccount = false
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.lilac)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Image("ScopeItLogo")
                    .resizable()
                    .scaledToFit()
                HStack {
                    Image(systemName: "mail")
                    TextField("email address", text: $userInfo.email).disableAutocorrection(true).autocapitalization(.none).keyboardType(.emailAddress)
                }.padding()
                    .padding(.top, 100)
                    .padding(.bottom, 10)
                
                
                HStack {
                    Image(systemName: "lock")
                    SecureField("password", text: $userInfo.password)
                }
                .padding()
                .padding(.top, 10)
                Spacer()
                
                
                Button("Create Account"){
                    FirebaseFunctions.authenticate(email: userInfo.email, password: userInfo.password) { success in
                        if success{
                            creatingAccount = true
                        }
                        else{
                            showInsufficientPasswordAlert = true
                            
                        }
                        FirebaseFunctions.login(email: userInfo.email, password: userInfo.password){success in}
                    }
                    
                }.alert(isPresented: $showInsufficientPasswordAlert){
                    Alert(
                        title: Text("Insufficient Password"),
                        message: Text("The password must be 6 characters long or more"),
                        dismissButton: .default(Text("Try again"))
                    )
                }}.padding()
                .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
                .background(Color.teal)
                .foregroundColor(.lilac2)
                .cornerRadius(10)
                .padding()
                .cornerRadius(30)
            
                .sheet(isPresented: $creatingAccount, onDismiss: {
                    HomeView()
                    userInfo.loggedin = true
                    userInfo.createAcct = false},
                       content:{
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color.lilac)
                            .edgesIgnoringSafeArea(.all)
                        
                        VStack{
                            Spacer()
                            Text("Enter Account Information")
                                .padding()
                                .frame(width: UIScreen.main.bounds.width - 100)
                                .foregroundColor(Color.teal)
                                .padding(.top, 50)
                                .padding(.bottom, 10)
                            Spacer()
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
                                    
                                    Text("Birthdate")
                                        .font(.title3)
                                    DatePicker(selection: $userInfo.birthdate, in: ...Date(), displayedComponents: .date) {
                                        
                                    }.onDisappear {
                                        fetchDataHoroscope.decode(url : URL(string: "https://ohmanda.com/api/horoscope/" + "\(userInfo.sign.signName.lowercased())")!)
                                    }
                                    
                                }.padding()
                                    .padding(.top, 10)
                                    .padding(.bottom, 100)
                                Spacer()
                                Button("Let's get Scoping!"){
                                    HomeView()
                                    userInfo.loggedin = true
                                    userInfo.createAcct = false
                                }
                                .padding()
                                .frame(width: UIScreen.main.bounds.width - (UIScreen.main.bounds.width)/4)
                                .background(Color.lilac2)
                                .foregroundColor(Color.teal)
                                .cornerRadius(10)
                                .padding(.top, 05)
                                .padding(.bottom, 10)
                                Spacer()
                            }
                            .edgesIgnoringSafeArea(.all)
                        }
                    }})
                    
                    
                    
                    Button("Back to Login"){
                        
                        userInfo.loggedin = false
                        userInfo.createAcct = false
                        
                        
                    }.padding()
                        .font(.system(size: 15))
                    // .font(Font.custom)
                        .frame(width: UIScreen.main.bounds.width - 200)
                        .foregroundColor(Color.lilac2)
                        .padding(.top, 10)
                    
                    Spacer()
                    
                }
                       }
                       }
                       
                       struct CreateAccountView_Previews: PreviewProvider {
                    static var previews: some View {
                        CreateAccountView()
                    }
                }
                       
