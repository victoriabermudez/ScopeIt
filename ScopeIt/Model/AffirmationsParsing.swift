//  AffirmationsParsing.swift



//  JSON 121521



//  Created by Angela Ge (student LM) on 12/15/21.



import Foundation





class FetchDataAffirmation : ObservableObject{

    

    @Published var responsesAffirmation : ResponseAffirmation = ResponseAffirmation()

        init(){

            guard let url = URL(string: "https://www.affirmations.dev") else {

                print("no data")

                return}



            URLSession.shared.dataTask(with: url) { (data, responseAffirmation, errors) in

                guard let data = data else {

                   print("urlsessionshared")

                    return

                }





                let decoder = JSONDecoder()

                if let responseAffirmation = try? decoder.decode(ResponseAffirmation.self, from: data) {

                    DispatchQueue.main.async {

                        self.responsesAffirmation = responseAffirmation

                    }

                }

                else{

                    print("Can't decode JSON")

                }



            }.resume() //if you don't have this it'll just schedule it it won't actually execute

    }

}





struct ResponseAffirmation: Codable{

    var affirmation : String?

}





extension ResponseAffirmation : Identifiable{

    var id: String {return affirmation!}

}

