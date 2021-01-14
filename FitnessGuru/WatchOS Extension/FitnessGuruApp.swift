//
//  FitnessGuruApp.swift
//  WatchOS Extension
//
//  Created by student on 2021-01-14.
//

import SwiftUI

@main
struct FitnessGuruApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
