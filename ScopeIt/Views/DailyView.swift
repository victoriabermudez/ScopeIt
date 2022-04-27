//  DailyView.swift

//  ScopeIt

//  Created by Michelle Kelly (student LM) on 3/14/22.

import SwiftUI





struct DailyView: View {
    
    
    
    @EnvironmentObject var userInfo: UserInfo
    @EnvironmentObject var fetchDataHoroscope: FetchDataHoroscope
    
    
//    var fetchDataHoroscope : FetchDataHoroscope {
//        FetchDataHoroscope(url : URL(string: "https://ohmanda.com/api/horoscope/" + "\(userInfo.sign.signName.lowercased())")!)
//    }
    
//    @StateObject var fetchDataHoroscope : FetchDataHoroscope = FetchDataHoroscope()
    
    @State var resHoroscope = ResponseHoroscope()
    
    
    
    @StateObject var fetchDataAffirmation = FetchDataAffirmation()
    
    
    
    @StateObject var fetchDataAdvice = FetchDataAdvice()
    
    
    
    @StateObject var fetchDataTarot = FetchDataTarot()
    
    //@StateObject var fetchDataAPOD = FetchDataAPOD()
    
    //@StateObject var fetchDataWeather = FetchDataWeather()
    
    
    
    var body: some View {
        
        
        
        VStack{
            
            //horoscope
            
            
            
            if(userInfo.displayHoroscope){
                
                VStack{
                    
                    Text("Horoscope")
                    
                    Text(fetchDataHoroscope.responsesHoroscope.horoscope ?? "no ")
                    Text(fetchDataHoroscope.responsesHoroscope.sign ?? "no sign")
                    
                }
            }
            
            
            
            //affirmation
            
            if(userInfo.displayAffirmation){
                
                VStack{
                    
                    Text("Affirmation")
                    
                    Text(fetchDataAffirmation.responsesAffirmation.affirmation ?? "no affirmation")
                    
                }
                
            }
            
            //advice
            
            if(userInfo.displayAdvice){
                
                VStack{
                    
                    Text("Advice")
                    
                    Text(fetchDataAdvice.responsesAdvice.slip.advice ?? "no advice")
                    
                }
                
            }
            
            //tarot cards
            
            if(userInfo.displayTarot){
                
                VStack{
                    
                    Text("Tarot cards")
                    
                    ForEach(fetchDataTarot.responsesTarot.cards) { card in
                        
                        Text(card.name!)
                        
                        Text(card.meaning_up!)
                        
                    }
                    
                }
                
                
                
            }
            
            //astro
            
            //        if(userInfo.displaySunrise){
            //
            //            VStack{
            //
            //                Text("Sunrise")
            //
            //            Text(fetchDataWeather.responsesWeather.astronomy.astro.sunrise ?? "no astro data")
            //
            //            }}
            //
            //    if(userInfo.displaySunset){
            //
            //    VStack{
            //
            //    Text("Sunset")
            //
            //    Text(fetchDataWeather.responsesWeather.astronomy.astro.sunset ?? "no astro data")
            //
            //    }}
            //
            //if(userInfo.displayMoonrise){
            //
            //    VStack{
            //
            //        Text("Moonrise")
            //
            //        Text(fetchDataWeather.responsesWeather.astronomy.astro.moonrise ?? "no astro data")
            //
            //    }}
            //
            //if(userInfo.displayMoonset){
            //
            //    VStack{
            //
            //        Text("Moonset")
            //
            //        Text(fetchDataWeather.responsesWeather.astronomy.astro.moonset ?? "no astro data")
            //
            //    }}
            //
            ////Text(fetchDataWeather.responsesWeather.astronomy.astro.moonphase ?? "no astro data")
            
            
            
            
            
            
            
        }
        
    }
    
}





struct DailyView_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
        
        
        
        DailyView()
        
        
        
    }
    
    
    
}
