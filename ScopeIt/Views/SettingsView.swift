//

//  SettingsView.swift

//  ScopeIt

//

//  Created by Michelle Kelly (student LM) on 3/14/22.

//



import SwiftUI

//need: day of weather stuff, location (city), sun sign, number of cards

//true or false boolean for whether to see them

struct SettingsView: View {

    @EnvironmentObject var userInfo: UserInfo

    @StateObject var fetchDataHoroscope = FetchDataHoroscope()

    @State var resHoroscope = ResponseHoroscope()

    @StateObject var fetchDataAffirmation = FetchDataAffirmation()

    @StateObject var fetchDataAdvice = FetchDataAdvice()

    @StateObject var fetchDataTarot = FetchDataTarot()

    //@StateObject var fetchDataAPOD = FetchDataAPOD()

    @StateObject var fetchDataWeather = FetchDataWeather()

    

    var body: some View {

        VStack{

            Toggle (isOn: $userInfo.displayHoroscope, label: {

                Text("Horoscope")

            })

            Toggle (isOn: $userInfo.displayAffirmation, label: {

                Text("Affirmation")

            })

            Toggle (isOn: $userInfo.displayAdvice, label: {

                Text("Advice")

            })

            Toggle (isOn: $userInfo.displayTarot, label: {

                Text("Tarot")

            })

            Toggle (isOn: $userInfo.displaySunrise, label: {

                Text("Sunrise")

            })

            Toggle (isOn: $userInfo.displaySunset, label: {

                Text("Sunset")

            })

            Toggle (isOn: $userInfo.displayMoonrise, label: {

                Text("Moonrise")

            })

            Toggle (isOn: $userInfo.displayMoonset, label: {

                Text("Moonset")

            })

            //TextField("Location", text: "\($userInfo.location)").disableAutocorrection(true).autocapitalization(.none)

            //  TextField("Tarot Card Amount", text: "\($userInfo.cardAmount)").disableAutocorrection(true).autocapitalization(.none)

        }

    }

}



struct SettingsView_Previews: PreviewProvider {

    static var previews: some View {

        SettingsView()

    }

}
