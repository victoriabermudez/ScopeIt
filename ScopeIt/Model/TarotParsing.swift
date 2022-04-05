////
////  TarotParsing.swift
////  ScopeIt
////
////  Created by Michelle Kelly (student LM) on 4/4/22.
////
//
//import Foundation
//
//
//class FetchDataTarot : ObservableObject{
//
//    @Published var responsesTaor : ResponseTarot = ResponseTarot()
//        init(){
//            guard let url = URL(string: "https://www.affirmations.dev") else {
//                print("no data")
//                return}
//
//            URLSession.shared.dataTask(with: url) { (data, responseAffirmation, errors) in
//                guard let data = data else {
//                   print("urlsessionshared")
//                    return
//                }
//
//
//                let decoder = JSONDecoder()
//                if let responseAffirmation = try? decoder.decode(ResponseAffirmation.self, from: data) {
//                    DispatchQueue.main.async {
//                        self.responsesAffirmation = responseAffirmation
//                    }
//                }
//                else{
//                    print("Can't decode JSON")
//                }
//
//            }.resume() //if you don't have this it'll just schedule it it won't actually execute
//    }
//}
//
//
//struct ResponseAffirmation: Codable{
//    var affirmation : String?
//}
//
//
//extension ResponseAffirmation : Identifiable{
//    var id: String {return affirmation!}
//}
//
//
