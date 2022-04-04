//

//  data parsing.swift

//  JSON 121521

//

//  Created by Angela Ge (student LM) on 12/15/21.

//



import Foundation



class FetchData : ObservableObject{

    

    @Published var responses : Response = Response()

    

        init(){

            guard let url = URL(string: "https://www.affirmations.dev") else {

                print("no data")

                return}

            

            

            URLSession.shared.dataTask(with: url) { (data, response, errors) in

                guard let data = data else {

                   print("error")

                    return

                }

                

                //guard let dataAsString = String(data: data, encoding: .utf8) else {return}

                

                

                

                let decoder = JSONDecoder()

                if let response = try? decoder.decode(Response.self, from: data) {

                    DispatchQueue.main.async {

                        self.responses = response

                    }

                }

                else{

                    print("Can't decode JSON")

                }

                

                

            }.resume() //if you don't have this it'll just schedule it it won't actually execute

    }

}



struct Response: Codable{

    var affirmation : String?

}



extension Response : Identifiable{

    var id: String {return affirmation!}

}

////
////  AffirmationsParsing.swift
////  ScopeIt
////
////  Created by Angela Ge (student LM) on 3/14/22.
////
//
//import Foundation
//
//class FetchData : ObservableObject{
//
//    @Published var responses : Response = Response()
//
//        init(){
//            guard let url = URL(string: "https://www.affirmations.dev") else {
//                print("no data")
//                return}
//
//
//            URLSession.shared.dataTask(with: url) { (data, response, errors) in
//                guard let data = data else {
//                   print("error")
//                    return
//                }
//
//                //guard let dataAsString = String(data: data, encoding: .utf8) else {return}
//
//
//
//                let decoder = JSONDecoder()
//                if let response = try? decoder.decode(Response.self, from: data) {
//                    DispatchQueue.main.async {
//                        print("Can decode JSON")
//                        self.responses = response
//                    }
//                }
//                else{
//                    print("Can't decode JSON")
//                }
//
//
//            }.resume() //if you don't have this it'll just schedule it it won't actually execute
//    }
//}
//
//struct Response: Codable{
//    var affirmation : String?
//}
//
////struct Result: Codable{
////    var affirmation : String?
////}
//
//extension Response : Identifiable{
//    var id: String {
//        return affirmation!
//    }
//}
