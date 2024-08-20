//
//  hrConnectionPracticeApp.swift
//  hrConnectionPractice
//
//  Created by Kristen Voorhees on 8/20/24.
//


import SwiftUI

@main
struct MyApp: App {
    @StateObject private var appModel = AppState()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HeartRateMonitorView()
                    .environmentObject(appModel)
            }
            .navigationViewStyle(.stack)
        }
    }
}

class AppState: ObservableObject {
    @Published var heartRateMonitors: [HeartRateMonitor] = []
    
    // TODO: Implement Bluetooth manager and update heart rates here
}
