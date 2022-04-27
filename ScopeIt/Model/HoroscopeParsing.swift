//
//  HoroscopeParsing.swift
//  ScopeIt
//
//  Created by Angela Ge (student LM) on 3/14/22.
//

import Foundation

class FetchDataHoroscope : ObservableObject{
    
    @Published var responsesHoroscope : ResponseHoroscope = ResponseHoroscope()
    
    init(){
        
        guard let url = URL(string: "https://www.affirmations.dev") else {

            print("no data")

            return}
    }
    func decode(url : URL){
        
        URLSession.shared.dataTask(with: url) { (data, response, errors) in
            
            guard let data = data else {
                
                print("error")
                
                return
            }
            
            //guard let dataAsString = String(data: data, encoding: .utf8) else {return}
            
            let decoder = JSONDecoder()
            
            if let responseHoroscope = try? decoder.decode(ResponseHoroscope.self, from: data) {
                
                DispatchQueue.main.async {
                    
                    self.responsesHoroscope = responseHoroscope
                    print(self.responsesHoroscope.horoscope ?? "no")
                    
                }
                
                print(url)
            }
            
            else{
                
                print(url)
                print("Can't decode JSON")
                print("----------------------------------------------------------------------------------------------------------------")
                
            }
            
        }.resume() //if you don't have this it'll just schedule it it won't actually execute
        
    }
}



struct ResponseHoroscope: Codable{
    
    var sign: String?
    var horoscope: String?
    
}


extension ResponseHoroscope : Identifiable{
    
    var id: String {
        
        return horoscope!
        
    }
}

