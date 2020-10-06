//
//  ContentView.swift
//  ForceTouchPlayer
//
//  Created by Danilo Campana Fuchs on 06/10/20.
//  Copyright © 2020 Danilo Campana Fuchs. All rights reserved.
//

import SwiftUI

let timerClockHz = 10000.0
let timerInterval = 1.0 / timerClockHz

struct Note {
    var frequency: Double
    var fractionOfBaseDuration: Int
}

struct ContentView: View {
    
    var timer = Timer.publish(every: timerInterval, tolerance: timerInterval, on: .main, in: .common).autoconnect()
    @State private var timerEnabled = false
    @State private var skippedTicksCount = 0
    
    @State private var currentNoteIndex: Int = 0;
    @State private var currentNote: Note?
    @State private var currentNoteEndTime: Date?
    
    @State private var tempo = 144.0
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Button(action: self.toggleTimer) {
                    Text(timerEnabled ? "Pause" : "Play")
                }
                .padding()
                Text("Tempo: \(tempo)")
                if (currentNote != nil) {
                    Text("Note: \(currentNote?.frequency ?? 0)")
                }
                Spacer()
            }
            Spacer()
        }.onReceive(timer) {
            time in
            self.playIfEnabled()
        }
    }
    
    func toggleTimer() {
        self.timerEnabled = !self.timerEnabled
        if (self.timerEnabled) {
            self.startPlayingSong()
        }
    }
    
    func playIfEnabled() {
        guard timerEnabled else { return }
        guard let currentNote = self.currentNote else { return }
        guard let currentNoteEndTime = self.currentNoteEndTime else { return }
        
        if (Date() > currentNoteEndTime) {
            self.startPlayingNextNote()
        }
        
        self.playTone(frequency: currentNote.frequency)
    }
    
    
    func startPlayingSong() {
        print("starting song")
        self.currentNoteIndex = 0;
        self.startPlayingNote()
    }
    
    func startPlayingNextNote() {
        print("starting next note")
        self.currentNoteIndex += 1;
        self.startPlayingNote()
    }
    
    func startPlayingNote() {
        guard let note = self.loadNote(index: self.currentNoteIndex) else {
            print("End of song")
            self.timerEnabled = false
            return
        }
        print("loaded note")
        self.playNote(note)
    }
    
    func loadNote(index: Int) -> Note? {
        if (index >= song.endIndex) {
            return nil
        }
        
        let entry = song[index]
        let note = Note(frequency: entry[0], fractionOfBaseDuration: Int(entry[1]))
        return note
    }
    
    func playNote(_ note: Note) {
        // Time it takes to play a note with fraction 1
        // (60s / tempo) * 4 beats
        let baseDuration = (60000.0 * 4.0) / tempo
        
        let noteDuration = baseDuration / Double(note.fractionOfBaseDuration)
        
        print("noteDuration: \(noteDuration)")
        self.skippedTicksCount = 0
        
        self.currentNote = note;
        let currentNoteEndTime = Date().addingTimeInterval(noteDuration / 1000.0)
        self.currentNoteEndTime = currentNoteEndTime
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"

        print("currentNoteEndTime \(formatter.string(from: currentNoteEndTime))")
    }
    
    func playTone(frequency: Double) {
        let clockTicksPerToneTick = Int(timerClockHz / frequency)
        let clockTicksToSkip = clockTicksPerToneTick - 1
        //print("clockTicksToSkip: \(clockTicksToSkip), \(self.skippedTicksCount)")
        
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


let NOTE_B0  = 31.0
let NOTE_C1  = 33.0
let NOTE_CS1 = 35.0
let NOTE_D1  = 37.0
let NOTE_DS1 = 39.0
let NOTE_E1  = 41.0
let NOTE_F1  = 44.0
let NOTE_FS1 = 46.0
let NOTE_G1  = 49.0
let NOTE_GS1 = 52.0
let NOTE_A1  = 55.0
let NOTE_AS1 = 58.0
let NOTE_B1  = 62.0
let NOTE_C2  = 65.0
let NOTE_CS2 = 69.0
let NOTE_D2  = 73.0
let NOTE_DS2 = 78.0
let NOTE_E2  = 82.0
let NOTE_F2  = 87.0
let NOTE_FS2 = 93.0
let NOTE_G2  = 98.0
let NOTE_GS2 = 104.0
let NOTE_A2  = 110.0
let NOTE_AS2 = 117.0
let NOTE_B2  = 123.0
let NOTE_C3  = 131.0
let NOTE_CS3 = 139.0
let NOTE_D3  = 147.0
let NOTE_DS3 = 156.0
let NOTE_E3  = 165.0
let NOTE_F3  = 175.0
let NOTE_FS3 = 185.0
let NOTE_G3  = 196.0
let NOTE_GS3 = 208.0
let NOTE_A3  = 220.0
let NOTE_AS3 = 233.0
let NOTE_B3  = 247.0
let NOTE_C4  = 262.0
let NOTE_CS4 = 277.0
let NOTE_D4  = 294.0
let NOTE_DS4 = 311.0
let NOTE_E4  = 330.0
let NOTE_F4  = 349.0
let NOTE_FS4 = 370.0
let NOTE_G4  = 392.0
let NOTE_GS4 = 415.0
let NOTE_A4  = 440.0
let NOTE_AS4 = 466.0
let NOTE_B4  = 494.0
let NOTE_C5  = 523.0
let NOTE_CS5 = 554.0
let NOTE_D5  = 587.0
let NOTE_DS5 = 622.0
let NOTE_E5  = 659.0
let NOTE_F5  = 698.0
let NOTE_FS5 = 740.0
let NOTE_G5  = 784.0
let NOTE_GS5 = 831.0
let NOTE_A5  = 880.0
let NOTE_AS5 = 932.0
let NOTE_B5  = 988.0
let REST = 0.0

let song = [
    [NOTE_D1, 4],
    [NOTE_D1, 4],
    [NOTE_G1, 4],
    [NOTE_G1, 4],
    [NOTE_A1, 4],
    [NOTE_A1, 4],
    [NOTE_G1, 2]
]
