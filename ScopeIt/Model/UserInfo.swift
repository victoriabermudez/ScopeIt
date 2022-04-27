//
//  UserInfo.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 2/24/22.
//

import SwiftUI

class UserInfo: ObservableObject{
    
    @Published var email: String
    @Published var firstName: String
    @Published var lastName: String
    //var name: String
    @Published var birthdate: Date
    @Published var password: String
    @Published var displayHoroscope: Bool
    @Published var displayAdvice: Bool
    @Published var displayAffirmation: Bool
    @Published var displayTarot: Bool
    @Published var displaySunrise: Bool
    @Published var displaySunset: Bool
    @Published var displayMoonrise: Bool
    @Published var displayMoonset: Bool
    @Published var location: String
    @Published var loggedin: Bool = false
    @Published var createAcct: Bool = false
    //@Published var accountInfo: Bool = false
    
    var sign: Sign {
        
        if (birthDateComponents.month == 12 && birthDateComponents.day! >= 22) || (birthDateComponents.month == 1 && birthDateComponents.day! <= 20) {
            return Sign(signName : "Capricorn", backgroundColor : "CapricornBG", textColor : "CapricornText", text2Color : "CapricornText2", accentColor : "CapricornAccent", backgroundImage : "Capricorn", signDescription: "Capricorns are ambitious and determined to reach their goals. They understand the perseverance and dedication of their aspirations.", signCompatibility: "Taurus, Cancer", luckyNumbers: "4, 8, 13, 22", signColor: "Brown, Black", signStrength: "Responsible, disciplined, self-control, good managers", signWeakness: "Know-it-all, unforgiving, condescending, expecting the worst", signLikes: "Family, tradition, music, understated status, quality craftsmanship", signDislikes: "Almost everything at some point")
            
        }
        
        else if (birthDateComponents.month == 1 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 2 && birthDateComponents.day! <= 18) {
            
            return Sign(signName : "Aquarius", backgroundColor : "AquariusBG", textColor : "AquariusText", text2Color : "AquariusText2", accentColor : "AquariusAccent", backgroundImage : "Aquarius", signDescription: "Aquarius are very self-reliant and independent. At the same time, they radiate confidence!", signCompatibility: " Leo, Sagittarius", luckyNumbers: "4, 7, 11, 22, 29", signColor: "Light-Blue, Silver", signStrength: "Progressive, original, independent, humanitarian", signWeakness: "Runs from emotional expression, temperamental, uncompromising, aloof", signLikes: "Fun with friends, risky business, fighting for causes, intellectual conversations", signDislikes: "Limitations, broken promises, being lonely, dull or boring situations")
        }
        
        else if (birthDateComponents.month == 2 && birthDateComponents.day! >= 19) || (birthDateComponents.month == 3 && birthDateComponents.day! <= 20) {
            
            return Sign(signName : "Pisces", backgroundColor : "PiscesBG", textColor : "PiscesText", text2Color : "PiscesText2", accentColor : "PiscesAccent", backgroundImage : "Pisces", signDescription: "Pisces are empathetic and sensitive. They will go to extreme lengths to ensure the happiness of their loved ones.", signCompatibility: "Virgo, Taurus", luckyNumbers: "3, 9, 12, 15, 18, 24", signColor: "Mauve, Lilac, Purple, Violet, Sea green", signStrength: "Compassionate, artistic, intuitive, gentle, wise, musical", signWeakness: "Fearful, overly trusting, sad, desire to escape reality, can be a victim or a martyr", signLikes: "Being alone, love, sleeping, music, romance, swimming, spiritual themes", signDislikes: "Know-it-all, being criticized, the past coming back to haunt, cruelty of any kind")
        }
        
        else if (birthDateComponents.month == 3 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 4 && birthDateComponents.day! <= 20) {
            
            return Sign(signName : "Aries", backgroundColor : "AriesBG", textColor : "AriesText", text2Color : "AriesText2", accentColor : "AriesAccent", backgroundImage : "Aries", signDescription: "Aries are bold and ambitious! They’ll eagerly approach even the most challenging situations with confidence.", signCompatibility: "Libra, Leo", luckyNumbers: "1, 8, 17", signColor: "Red", signStrength: "Courageous, determined, confident, enthusiastic, optimistic, honest, passionate", signWeakness: "Impatient, moody, short-tempered, impulsive, aggressive", signLikes: "Comfortable clothes, taking on leadership roles, physical challenges, individual sports", signDislikes: "Inactivity, delays, work that does not use one's talents")
        }
        
        else if (birthDateComponents.month == 4 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 5 && birthDateComponents.day! <= 20) {
            
            return Sign(signName : "Taurus", backgroundColor : "TaurusBG", textColor : "TaurusText", text2Color : "TaurusText2", accentColor : "TaurusAccent", backgroundImage : "Taurus", signDescription: "Taurus love to relax and enjoy a serene environment. They’ll live in luxury and contentment while also remaining social.", signCompatibility: "Scorpio, Cancer", luckyNumbers: "2, 6, 9, 12, 24", signColor: "Green, Pink", signStrength: "Reliable, patient, practical, devoted, responsible, stable", signWeakness: "Stubborn, possessive, uncompromising", signLikes: "Gardening, cooking, music, romance, high quality clothes, working with hands", signDislikes: "Sudden changes, complications, insecurity of any kind, synthetic fabrics")
        }
        
        else if (birthDateComponents.month == 5 && birthDateComponents.day! >= 21) || (birthDateComponents.month == 6 && birthDateComponents.day! <= 21) {
            
            return Sign(signName : "Gemini", backgroundColor : "GeminiBG", textColor : "GeminiText", text2Color : "GeminiText2", accentColor : "GeminiAccent", backgroundImage : "Gemini", signDescription: "Gemini are often spontaneous, outgoing, and playful. They are exceedingly curious and clever.", signCompatibility: "Sagittarius, Aquarius", luckyNumbers: "5, 7, 14, 23", signColor: "Light-Green, Yellow", signStrength: "Gentle, affectionate, curious, adaptable, ability to learn quickly and exchange ideas", signWeakness: "Nervous, inconsistent, indecisive", signLikes: "Music, books, magazines, chats with nearly anyone, short trips around the town", signDislikes: "Being alone, being confined, repetition and routine")
        }
        
        else if (birthDateComponents.month == 6 && birthDateComponents.day! >= 22) || (birthDateComponents.month == 7 && birthDateComponents.day! <= 22) {
            
            return Sign(signName : "Cancer", backgroundColor : "CancerBG", textColor : "CancerText", text2Color : "CancerText2", accentColor : "CancerAccent", backgroundImage : "Cancer", signDescription: "Cancers are extremely in touch with their emotions and devoted to their loved ones. With their highly intuitive personalities, they can manifest anything into their lives.", signCompatibility: "Capricorn, Taurus", luckyNumbers: "2, 3, 15, 20", signColor: " White", signStrength: "Tenacious, highly imaginative, loyal, emotional, sympathetic, persuasive", signWeakness: "Moody, pessimistic, suspicious, manipulative, insecure", signLikes: "Art, home-based hobbies, relaxing near or in water, helping loved ones, a good meal with friends", signDislikes: "Strangers, any criticism of Mom, revealing of personal life")
            
        }
        
        else if (birthDateComponents.month == 7 && birthDateComponents.day! >= 23) || (birthDateComponents.month == 8 && birthDateComponents.day! <= 23) {
            
            return Sign(signName : "Leo", backgroundColor : "LeoBG", textColor : "LeoText", text2Color : "LeoText2", accentColor : "LeoAccent", backgroundImage : "Leo", signDescription: "Leos love to be in the spotlight! They are often loyal, passionate, and have a special enthusiasm for life.", signCompatibility: "Aquarius, Gemini", luckyNumbers: "1, 3, 10, 19", signColor: "Gold, Yellow, Orange", signStrength: "Creative, passionate, generous, warm-hearted, cheerful, humorous", signWeakness: "Arrogant, stubborn, self-centered, lazy, inflexible", signLikes: "Theater, taking holidays, being admired, expensive things, bright colors, fun with friends", signDislikes: "Being ignored, facing difficult reality, not being treated like a king or queen")
            
        }
        
        else if (birthDateComponents.month == 8 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 9 && birthDateComponents.day! <= 23) {
            
            return Sign(signName : "Virgo", backgroundColor : "VirgoBG", textColor : "VirgoText", text2Color : "VirgoText2", accentColor : "VirgoAccent", backgroundImage : "Virgo", signDescription: "Virgos are logical, practical, and deliberate. With their diligent personality, they aren’t afraid to improve their skills in any area and love to learn!", signCompatibility: "Pisces, Cancer", luckyNumbers: "5, 14, 15, 23, 32", signColor: "Grey, Beige, Pale-Yellow", signStrength: " Loyal, analytical, kind, hardworking, practical", signWeakness: "Shyness, worry, overly critical of self and others, all work and no play", signLikes: "Animals, healthy food, books, nature, cleanliness", signDislikes: "Rudeness, asking for help, taking center stage")
        }
        
        else if (birthDateComponents.month == 9 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 10 && birthDateComponents.day! <= 22) {
            
            return Sign(signName : "Libra", backgroundColor : "LibraBG", textColor : "LibraText", text2Color : "LibraText2", accentColor : "LibraAccent", backgroundImage : "Libra", signDescription: "Libras love to maintain balance and are very extroverted and intuitive. They seek harmony and peace.", signCompatibility: "Aries, Sagittarius", luckyNumbers: "4, 6, 13, 15, 24", signColor: "Pink, Green", signStrength: "Cooperative, diplomatic, gracious, fair-minded, social", signWeakness: "Indecisive, avoids confrontations, will carry a grudge, self-pity", signLikes: "Harmony, gentleness, sharing with others, the outdoors", signDislikes: "Violence, injustice, loudmouths, conformity")
        }
        
        else if (birthDateComponents.month == 10 && birthDateComponents.day! >= 24) || (birthDateComponents.month == 11 && birthDateComponents.day! <= 21) {
            
            return Sign(signName : "Scorpio", backgroundColor : "ScorpioBG", textColor : "ScorpioText", text2Color : "ScorpioText2", accentColor : "ScorpioAccent", backgroundImage : "Scorpio", signDescription: "Scorpios are fearless and bold. At the same time, they can be mysterious and secretive.", signCompatibility: "Taurus, Cancer", luckyNumbers: "8, 11, 18, 22", signColor: "Scarlet, Red, Rust", signStrength: "Resourceful, powerful, brave, passionate, a true friend", signWeakness: "Distrusting, jealous, manipulative, violent", signLikes: "Truth, facts, being right, talents, teasing, passion", signDislikes: "Dishonesty, revealing secrets, superficiality, small talk")
        }
        
        else  {
            //if (birthDateComponents.month == 11 && birthDateComponents.day! >= 23) || (birthDateComponents.month == 12 && birthDateComponents.day! <= 21)
            
            return Sign(signName : "Sagittarius", backgroundColor : "SagittariusBG", textColor : "SagittariusText", text2Color : "SagittariusText2", accentColor : "SagittariusAccent", backgroundImage : "Sagittarius", signDescription: "Sagittarius are very intelligent and fiery. As a fire sign, they are always on a quest for knowledge with blazing arrows.", signCompatibility: "Gemini, Aries", luckyNumbers: "3, 7, 9, 12, 21", signColor: "Blue", signStrength: "Generous, idealistic, great sense of humor", signWeakness: "Promises more than can deliver, very impatient, will say anything no matter how undiplomatic", signLikes: "Freedom, travel, philosophy, being outdoors", signDislikes: "Clingy people, being constrained, off-the-wall theories, details")
        }
        
    }
    var birthDateComponents : DateComponents {
        Calendar.current.dateComponents([.year, .month, .day], from: birthdate)
    }
    
    //@Published var image: UIImage = UIImage(named: "user")!
    
    
    
    init(){

          self.email = ""

          self.firstName = ""

          self.lastName = ""

          //self.name = ""

          self.password = ""

          self.birthdate = Date()

          self.displayHoroscope = true

          self.displayAdvice = true

          self.displayAffirmation = true

          self.displayTarot = true

          self.displaySunrise = true

          self.displaySunset = true

          self.displayMoonrise = true

          self.displayMoonset = true

         // self.cardAmount = 3

          self.location = "London"

      }
    

}
