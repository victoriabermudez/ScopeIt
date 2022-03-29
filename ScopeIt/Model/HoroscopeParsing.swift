//
//  HoroscopeParsing.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 3/29/22.
//

import Foundation



class FetchDataHoroscope : ObservableObject{

    

    @Published var responsesHoroscope : ResponseHoroscope = ResponseHoroscope()

    

        init(){

            guard let url = URL(string: "https://ohmanda.com/api/horoscope/libra") else {

                print("no data")

                return}

            

            

            URLSession.shared.dataTask(with: url) { (data, response, errors) in

                guard let data = data else {

                   //print("error")

                    return

                }

                

                //guard let dataAsString = String(data: data, encoding: .utf8) else {return}

                

                

                

                let decoder = JSONDecoder()

                if let responseHoroscope = try? decoder.decode(ResponseHoroscope.self, from: data) {

                    DispatchQueue.main.async {

                        self.responsesHoroscope = responseHoroscope

                    }

                }

                else{

                    print("Can't decode JSON")

                }

                

                

            }.resume() //if you don't have this it'll just schedule it it won't actually execute

    }

}



struct ResponseHoroscope: Codable{

    var resultsHoroscope : [ResultHoroscope] = [ResultHoroscope]()

}



struct ResultHoroscope: Codable{

    var horoscope : String?

}



extension ResultHoroscope : Identifiable{

    var id: String {

        return horoscope!

    }

}

