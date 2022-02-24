//
//  ScopeItApp.swift
//  ScopeIt
//
//  Created by Victoria Bermudez (student LM) on 2/22/22.
//

import SwiftUI
import Firebase


class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct ScopeItApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
