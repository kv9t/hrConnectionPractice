//
//  hrMonitorView.swift
//  hrConnectionPractice
//
//  Created by Kristen Voorhees on 8/20/24.
//
//will be our main view that displays the list of connected heart rate monitors and their current heart rates.


import SwiftUI

struct HeartRateMonitorView: View {
    @StateObject private var viewModel = HeartRateMonitorViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.heartRateMonitors) { monitor in
                HStack {
                    Text(monitor.name)
                    Spacer()
                    Text("\(monitor.heartRate) bpm")
                }
            }
        }
        .navigationTitle("Heart Rate Monitors")
        
        // Button to connect/disconnect from Bluetooth peripherals
        Button(action: {
            // TODO: Implement button logic here
            let newMonitor = HeartRateMonitor(name: "New Monitor", deviceID: "12345", heartRate: 80)
            self.viewModel.connect(to: newMonitor)
            self.viewModel.heartRateMonitors.append(newMonitor)
        }) {
            Text("Connect to New Monitor")
        }
    }
}

#Preview {
    HeartRateMonitorView()
}
