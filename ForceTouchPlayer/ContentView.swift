import SwiftUI

let timerClockHz = 1000.0
let timerInterval = 1.0 / timerClockHz

struct ContentView: View {
    
    var songsList: [Song]
    
    private var timer = Timer.publish(every: timerInterval, tolerance: timerInterval, on: .main, in: .common).autoconnect()
    
    @State private var timerEnabled = false
    @State private var skippedTicksCount = 0
    
    @State private var currentNoteIndex: Int = 0;
    @State private var currentNote: Note?
    @State private var currentNoteEndTime: Date?
    
    @State private var tempo = 144.0
    @State private var currentSongIndex: Int = 0
    
    init(songsRepository: SongsRepository) {
        self.songsList = songsRepository.listSongs()
    }
    
    var body: some View {
        let tempoStr = String(format: "%.1f", self.tempo);
        let noteStr = String(format: "%.1f", self.currentNote?.frequency ?? 0);
        return HStack {
            Spacer()
            VStack {
                
                Spacer()
                Picker(selection: $currentSongIndex, label: Text("Song")) {
                    ForEach(0 ..< songsList.count) {
                        Text(self.songsList[$0].name).tag($0)
                    }
                }
                Spacer()
                Button(action: self.toggleTimer) {
                    Text(timerEnabled ? "Stop" : "Play")
                }
                .padding()
                Text("Tempo: \(tempoStr) BPM")
                if (currentNote != nil) {
                    Text("Note: \(noteStr)Hz")
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
        if (self.timerEnabled) {
            self.stop()
        } else {
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
        self.timerEnabled = true
        self.currentNoteIndex = 0
        self.startPlayingNote()
    }
    
    func stop() {
        self.timerEnabled = false
        self.currentNoteIndex = 0
        self.currentNote = nil
        self.currentNoteEndTime = nil
        self.skippedTicksCount = 0
    }
    
    func startPlayingNextNote() {
        self.currentNoteIndex += 1;
        self.startPlayingNote()
    }
    
    func startPlayingNote() {
        guard let note = self.loadNote(index: self.currentNoteIndex) else {
            self.timerEnabled = false
            return
        }
        self.playNote(note)
    }
    
    func loadSong(song: Song) -> Song? {
        return songsList.first { $0 == song }
    }
    
    func loadNote(index: Int) -> Note? {
        let currentSong = self.songsList[currentSongIndex]
        
        if (index >= currentSong.notes.endIndex) {
            return nil
        }
        
        return currentSong.notes[index]
    }
    
    func playNote(_ note: Note) {
        // Time it takes to play a note with fraction 1
        // (60s / tempo) * 4 beats
        let baseDuration = (60000.0 * 4.0) / tempo
        
        let noteDuration = baseDuration / Double(note.fractionOfBaseDuration)
        
        self.skippedTicksCount = 0
        
        self.currentNote = note;
        let currentNoteEndTime = Date().addingTimeInterval(noteDuration / 1000.0)
        self.currentNoteEndTime = currentNoteEndTime
    }
    
    func playTone(frequency: Double) {
        if (frequency == 0) {
            return;
        }
        let clockTicksPerToneTick = Int(timerClockHz / frequency)
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
        ContentView(songsRepository: SongsRepository())
    }
}
