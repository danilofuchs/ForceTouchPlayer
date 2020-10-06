//
//  ContentView.swift
//  ForceTouchPlayer
//
//  Created by Danilo Campana Fuchs on 06/10/20.
//  Copyright © 2020 Danilo Campana Fuchs. All rights reserved.
//

import SwiftUI

let timerClockHz = 1000.0
let timerInterval = 1.0 / timerClockHz

let defaultToneHz = 1.0

//let NOTE_A4 = 440.0
//
//let song = [[NOTE_C3, 1], [NOTE_C3, ]]

struct ContentView: View {
    
    @State private var timerEnabled = false
    var timer = Timer.publish(every: timerInterval, tolerance: timerInterval, on: .main, in: .common).autoconnect()
    
    @State private var lastPulseTime: Date?
    @State private var skippedTicksCount = 0
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Button(action: self.toggleTimer) {
                    Text(timerEnabled ? "Pause" : "Play")
                }
                .padding()
                Spacer()
            }
            Spacer()
        }.onReceive(timer) {
            time in
            self.playIfEnabled(time: time)
        }
    }
    
    func toggleTimer() {
        self.timerEnabled = !self.timerEnabled
    }
    
    func playIfEnabled(time: Date) {
        if (self.timerEnabled) {
            self.playTone(time: time)
        }
    }
    
    func playTone(time: Date) {
        let clockTicksPerToneTick = Int(timerClockHz / defaultToneHz)
        let clockTicksToSkip = clockTicksPerToneTick - 1
        
        if (self.skippedTicksCount < clockTicksToSkip) {
            self.skippedTicksCount += 1
            return
        }
        
        self.playTick()
        self.skippedTicksCount = 0
    }

    func playTick() {
        NSHapticFeedbackManager.defaultPerformer.perform(
            NSHapticFeedbackManager.FeedbackPattern.generic,
            performanceTime: NSHapticFeedbackManager.PerformanceTime.now)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
