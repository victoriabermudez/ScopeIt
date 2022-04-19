//
//  ScopeItApp.swift
//  ScopeIt
//
//  Created by Victoria Bermudez (student LM) on 2/22/22.
//

import SwiftUI
import Firebase


class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct ScopeItApp : App {
    
    @StateObject var userInfo = UserInfo()
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userInfo)
        }
    }
}
