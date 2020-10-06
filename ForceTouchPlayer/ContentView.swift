//
//  ContentView.swift
//  ForceTouchPlayer
//
//  Created by Danilo Campana Fuchs on 06/10/20.
//  Copyright © 2020 Danilo Campana Fuchs. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var timerEnabled = false
    var timerPublisher = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
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
        }.onReceive(timerPublisher) {
            time in
            self.playIfEnabled()
        }
    }
    
    func toggleTimer() {
        self.timerEnabled = !self.timerEnabled;
    }
    
     func playIfEnabled() {
        if (self.timerEnabled) {
            self.playTick()
        }
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
