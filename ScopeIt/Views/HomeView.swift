//
//  HomeView.swift
//  ScopeIt
//
//  Created by Michelle Kelly (student LM) on 3/2/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.lilac)
                .edgesIgnoringSafeArea(.all)
            
            TabView{
                DailyView()
                    .tabItem{
                        Label("Daily", systemImage: "calendar.circle.fill")
                    }
                SunSignView()
                    .tabItem{
                        Label("Sun Sign", systemImage: "moon.circle.fill")
                    }
                SettingsView()
                    .tabItem{
                        Label("Settings", systemImage: "gearshape.circle.fill")
                    }
                ProfileView()
                    .tabItem{
                        Label("Account", systemImage: "person.circle.fill")
                    }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
