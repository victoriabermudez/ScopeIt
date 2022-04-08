//

//  DailyView.swift

//  ScopeIt

//

//  Created by Michelle Kelly (student LM) on 3/14/22.

//



import SwiftUI



import SwiftUI



struct DailyView: View {
    
    @StateObject var fetchDataAffirmation = FetchDataAffirmation()
    
    @StateObject var fetchDataAdvice = FetchDataAdvice()
    
    @StateObject var fetchDataTarot = FetchDataTarot()
    
    
    var body: some View {
        
        VStack{
            
            Text(fetchDataAffirmation.responsesAffirmation.affirmation ?? "no affirmation")
            
            //Text(fetchDataAdvice.responsesAdvice.result.slip.advice ?? "no advice")
            
            //Text(Name ?? "non")
           //Text(fetchDataTarot.responsesTarot.cards[0].name ?? "non")
            ///?? "no tarot")
            
        }
        
    }
    
}



struct DailyView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        DailyView()
        
    }
    
}
