//

//  HoroscopeView.swift

//  ScopeIt

//

//  Created by Michelle Kelly (student LM) on 3/14/22.

//



import SwiftUI



struct HoroscopeView: View {

    @StateObject var fetchDataHoroscope = FetchDataHoroscope()

    @State var resHoroscope = ResponseHoroscope()

    

    var body: some View {

        Text(fetchDataHoroscope.responsesHoroscope.horoscope ?? "no ")

    }

}



struct HoroscopeView_Previews: PreviewProvider {

    static var previews: some View {

        HoroscopeView()

    }

}

