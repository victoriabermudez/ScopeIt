//
//  DailyView.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 3/14/22.
//

import SwiftUI

import SwiftUI

struct DailyView: View {
    @StateObject var fetchData = FetchData()
    @State var res = Result()
    
    var body: some View {
        Text(res.affirmation ?? "no affirmation")
        
    }
}

struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        DailyView()
    }
}
