//

//  AdviceParsing.swift

//  ScopeIt

//

//  Created by Michelle Kelly (student LM) on 4/4/22.

//



//







//  data parsing.swift







//  JSON 121521







//







//  Created by Angela Ge (student LM) on 12/15/21.







//















import Foundation















class FetchDataAdvice : ObservableObject{







    







    @Published var responsesAdvice : ResponseAdvice = ResponseAdvice()







    







        init(){







            guard let url = URL(string: "https://api.adviceslip.com/advice") else {







                print("no data")







                return}







            







            







            URLSession.shared.dataTask(with: url) { (data, responseAdvice, errors) in







                guard let data = data else {







                   print("urlsessionshared")







                    return







                }







                







//                guard let dataAsString = String(data: data, encoding: .utf8) else {print("utf")



//                    return }







                







                







                







                let decoder = JSONDecoder()







                if let responseAdvice = try? decoder.decode(ResponseAdvice.self, from: data) {







                    DispatchQueue.main.async {







                        self.responsesAdvice = responseAdvice







                    }







                }







                else{







                    print("Can't decode JSON")







                }







                







                







            }.resume() //if you don't have this it'll just schedule it it won't actually execute







    }







}













struct ResponseAdvice: Codable{







    var slip : Slip = Slip()







}







struct Slip: Codable{







    var advice : String?







}







extension Slip : Identifiable{







    var id: String {return advice!}







}
