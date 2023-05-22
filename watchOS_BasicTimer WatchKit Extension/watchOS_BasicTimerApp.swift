//
//  watchOS_BasicTimerApp.swift
//  watchOS_BasicTimer WatchKit Extension
//
//  Created by VOLKAN EFE on 20.05.2023.
//

import SwiftUI

@main
struct watchOS_BasicTimerApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
