//
//  HeartRateMonitor.swift
//  hrConnectionPractice
//
//  Created by Kristen Voorhees on 8/20/24.
//

import Foundation

struct HeartRateMonitor: Identifiable {
    let id = UUID()
    var name: String
    var deviceID: String
    var heartRate: Int
    
    mutating func updateHeartRate(newHeartRate: Int) {
        self.heartRate = newHeartRate
    }
}
