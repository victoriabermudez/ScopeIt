//

//  WeatherParsing.swift

//  ScopeIt

//

//  Created by Michelle Kelly (student LM) on 4/4/22.

//



import Foundation





class FetchDataWeather : ObservableObject{

    

    @Published var responsesWeather : ResponseWeather = ResponseWeather()

    @Published var userInfo: UserInfo = UserInfo()



        init(){

            guard let url = URL(string: ("https://api.weatherapi.com/v1/astronomy.json?key=016febeaff61440685150357222201&q=" + "\(userInfo.location)" + "&dt=today")) else {

                print("no data")

                return}



            URLSession.shared.dataTask(with: url) { (data, responseWeather, errors) in

                guard let data = data else {

                   print("urlsessionshared")

                    return

                }





                let decoder = JSONDecoder()

                if let responseWeather = try? decoder.decode(ResponseWeather.self, from: data) {

                    DispatchQueue.main.async {

                        self.responsesWeather = responseWeather

                    }

                }

                else{

                    print("Can't decode JSON")

                }



            }.resume() //if you don't have this it'll just schedule it it won't actually execute

    }

}







//very much wrong -4/4

struct ResponseWeather: Codable{

    var astronomy : Astronomy = Astronomy()

}



struct Astronomy: Codable{

    var astro: Astro = Astro()

}



struct Astro: Codable{

    var sunrise: String?

    var sunset: String?

    var moonrise: String?

    var moonset: String?

    var moonphase: String?

}

 

extension Astro : Identifiable{

    var id: String {return sunrise!}

}



