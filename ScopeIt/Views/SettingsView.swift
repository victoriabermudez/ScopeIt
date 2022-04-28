import SwiftUI



//need: day of weather stuff, location (city), sun sign, number of cards



//true or false boolean for whether to see them



struct SettingsView: View {



    @EnvironmentObject var userInfo: UserInfo



//    var fetchDataHoroscope : FetchDataHoroscope {

//        FetchDataHoroscope(url : URL(string: "https://ohmanda.com/api/horoscope/" + "\(userInfo.sign.signName.lowercased())")!)

//    }



    @StateObject var fetchDataHoroscope : FetchDataHoroscope = FetchDataHoroscope()



    @State var resHoroscope = ResponseHoroscope()



    @StateObject var fetchDataAffirmation = FetchDataAffirmation()



    @StateObject var fetchDataAdvice = FetchDataAdvice()



    @StateObject var fetchDataTarot = FetchDataTarot()



    //@StateObject var fetchDataAPOD = FetchDataAPOD()



    //@StateObject var fetchDataWeather = FetchDataWeather()



    



    var body: some View {

        ZStack {

            Rectangle()

                .foregroundColor(Color.lilac)

                .edgesIgnoringSafeArea(.all)

            VStack{

                Text("Select the items to display")
                    .font(.title)
                    .foregroundColor(Color.teal)
                    

                Toggle (isOn: $userInfo.displayHoroscope, label: {

                    Image(systemName: "moon.stars.fill").foregroundColor(Color.lilac2)

                    Text("Horoscope")
                        .foregroundColor(Color.lilac2)


                })

                .padding()

                .toggleStyle(SwitchToggleStyle(tint: Color.teal))



                Toggle (isOn: $userInfo.displayAffirmation, label: {

                    Image(systemName: "heart.fill").foregroundColor(Color.lilac2)

                    Text("Affirmation")
                        .foregroundColor(Color.lilac2)


                })

                .padding()

                .toggleStyle(SwitchToggleStyle(tint: Color.teal))



                Toggle (isOn: $userInfo.displayAdvice, label: {

                    Image(systemName: "mail.fill").foregroundColor(Color.lilac2)

                    Text("Advice")
                        .foregroundColor(Color.lilac2)


                })

                .padding()

                .toggleStyle(SwitchToggleStyle(tint: Color.teal))



                Toggle (isOn: $userInfo.displayTarot, label: {

                    Image(systemName: "greetingcard.fill").foregroundColor(Color.lilac2)

                    Text("Tarot")
                        .foregroundColor(Color.lilac2)



                })

                .padding()

                .toggleStyle(SwitchToggleStyle(tint: Color.teal))



    //            Toggle (isOn: $userInfo.displaySunrise, label: {

    //

    //                Text("Sunrise")

    //

    //            })

    //

    //            Toggle (isOn: $userInfo.displaySunset, label: {

    //

    //                Text("Sunset")

    //

    //            })

    //

    //            Toggle (isOn: $userInfo.displayMoonrise, label: {

    //

    //                Text("Moonrise")

    //

    //            })

    //

    //            Toggle (isOn: $userInfo.displayMoonset, label: {

    //

    //                Text("Moonset")

    //

    //            })



                //TextField("Location", text: "\($userInfo.location)").disableAutocorrection(true).autocapitalization(.none)



                //  TextField("Tarot Card Amount", text: "\($userInfo.cardAmount)").disableAutocorrection(true).autocapitalization(.none)



            }

        }



    }



}







struct SettingsView_Previews: PreviewProvider {



    static var previews: some View {



        SettingsView()



    }



}
