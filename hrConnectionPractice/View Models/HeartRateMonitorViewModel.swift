//
//  hrMonitorViewModel.swift
//  hrConnectionPractice
//
//  Created by Kristen Voorhees on 8/20/24.
//
// handle the interaction between the view and the model

import Foundation

class HeartRateMonitorViewModel {
    var heartRateMonitors: [HeartRateMonitor] = []
    
    func connect(to monitor: HeartRateMonitor) -> Bool {
        // TODO: Implement Bluetooth connectivity logic here
        print("Connecting to \(monitor.name)")
        
        // For now, just simulate a successful connection
        return true
    }
}
