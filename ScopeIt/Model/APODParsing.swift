////
////  APODparsing.swift
////  ScopeIt
////
////  Created by Michelle Kelly (student LM) on 4/4/22.
////
//
//import Foundation
//
//
//class FetchDataAPOD : ObservableObject{
//
//    @Published var responsesAPOD : ResponseAPOD = ResponseAPOD()
//        init(){
//            guard let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&start_date=2005-10-11&end_date=2005-10-11") else {
//                print("no data")
//                return}
//
//            URLSession.shared.dataTask(with: url) { (data, responseAPOD, errors) in
//                guard let data = data else {
//                   print("urlsessionshared")
//                    return
//                }
//
//
//                let decoder = JSONDecoder()
//                if let responseAPOD = try? decoder.decode(ResponseAPOD.self, from: data) {
//                    DispatchQueue.main.async {
//                        self.responsesAPOD = responseAPOD
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
////
//struct ResponseAPOD: Codable{
//    var result : [Result]
//}
//
//struct
//
//extension ResponseAPOD : Identifiable{
//    var id: String {return affirmation!}
//}
//
//
