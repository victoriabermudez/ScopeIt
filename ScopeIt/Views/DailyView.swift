//  DailyView.swift

//  ScopeIt

//  Created by Michelle Kelly (student LM) on 3/14/22.

import SwiftUI





struct DailyView: View {
    
    
    
    @EnvironmentObject var userInfo: UserInfo
    @EnvironmentObject var fetchDataHoroscope: FetchDataHoroscope
    @State var resHoroscope = ResponseHoroscope()
    @StateObject var fetchDataAffirmation = FetchDataAffirmation()
    @StateObject var fetchDataAdvice = FetchDataAdvice()
    @StateObject var fetchDataTarot = FetchDataTarot()
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.lilac2)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Daily")
                    .font(.title)
                    .foregroundColor(Color.teal)
                    .bold()
                    .padding(.bottom)
                //horoscope
                if(userInfo.displayHoroscope){
                    VStack{
                        Text("Horoscope")
                            .font(.title2)
                            .foregroundColor(Color.teal)
                            .bold()
                        Text(fetchDataHoroscope.responsesHoroscope.horoscope ?? "go to account tab  to enter your birthdate")
                            .padding(.horizontal)
                            .foregroundColor(Color.teal)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 13.0))
                    }
                }
                //affirmation
                if(userInfo.displayAffirmation){
                    VStack{
                        
                        Text("Affirmation")
                            .font(.title2)
                            .foregroundColor(Color.teal)
                            .bold()
                        Text(fetchDataAffirmation.responsesAffirmation.affirmation ?? "no affirmation today :(")
                            .padding(.horizontal)
                            .foregroundColor(Color.teal)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 13.0))
                    }
                    
                }
                
                //advice
                
                if(userInfo.displayAdvice){
                    
                    VStack{
                        
                        Text("Advice")
                            .font(.title2)
                            .foregroundColor(Color.teal)
                            .bold()
                        Text(fetchDataAdvice.responsesAdvice.slip.advice ?? "no advice today :(")
                            .padding(.horizontal)
                            .foregroundColor(Color.teal)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 13.0))
                    }
                    
                }
                
                //tarot cards
                
                if(userInfo.displayTarot){
                    
                    VStack{
                        
                        Text("Tarot cards")
                            .font(.title2)
                            .foregroundColor(Color.teal)
                            .bold()
                        ForEach(fetchDataTarot.responsesTarot.cards) { card in
                            
                            Text(card.name! + ":")
                                .padding(.horizontal)
                                .foregroundColor(Color.teal)
                            Text(card.meaning_up!)
                                .padding(.horizontal)
                                .foregroundColor(Color.teal)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 13.0))
                        }
                        
                    }
                    
                    
                    
                }
            }
        }
    }
    
}





struct DailyView_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
        
        
        
        DailyView()
        
        
        
    }
    
    
    
}
