//
//  LifespanApp.swift
//  Lifespan WatchKit Extension
//
//  Created by Haotian Huang on 26/3/22.
//

import SwiftUI

@main
struct LifespanApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .environmentObject(LifespanModel())

            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
