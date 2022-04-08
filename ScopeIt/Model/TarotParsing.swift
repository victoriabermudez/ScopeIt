//

//  TarotParsing.swift

//  ScopeIt

//

//  Created by Michelle Kelly (student LM) on 4/4/22.

//



import Foundation



class FetchDataTarot : ObservableObject{



    @Published var responsesTarot : ResponseTarot = ResponseTarot()

    
        init(){

            print(String(self.responsesTarot.cards.count) ?? "akjfns")

            guard let url = URL(string: "https://rws-cards-api.herokuapp.com/api/v1/cards/random?n=10") else {

                print("no data")

                return}



            URLSession.shared.dataTask(with: url) { (data, responseTarot, errors) in

                guard let data = data else {

                   print("urlsessionshared")

                    return

                }





                let decoder = JSONDecoder()

                if let responseTarot = try? decoder.decode(ResponseTarot.self, from: data) {

                    DispatchQueue.main.async {

                        self.responsesTarot = responseTarot
                        //self.responsesTarot = responseTarot
                        print(self.responsesTarot.cards[0].name ?? "non")
                        //Name = self.responsesTarot.cards[0].name
                    }

                }

                else{

                    print("Can't decode tarot JSON")

                }

                print(String(self.responsesTarot.cards.count+2) ?? "akjfns")

            }.resume() //if you don't have this it'll just schedule it it won't actually execute
            print(String(self.responsesTarot.cards.count + 1) ?? "akjfns")
    }

}





struct ResponseTarot: Codable{

    var cards : [Card] = [Card]()

}



//struct Cards: Codable{
//
//    var card: Card = Card()
//
//}



struct Card: Codable{

    var name: String?

}



extension Card : Identifiable{

    var id: String {return name!}

}
