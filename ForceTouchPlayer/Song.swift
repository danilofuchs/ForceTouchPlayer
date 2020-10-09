import Foundation

struct Song: Equatable {
    var name: String
    
    var rawNotes: [RawNote]
    
    /// Padding note added between each note in a song
    var padding: Note? = Note(frequency: 0, fractionOfBaseDuration: 32)
    
    var notes: [Note] {
        
        let parsedNotes = rawNotes.map {
            Note(frequency: $0.frequency, fractionOfBaseDuration: $0.fractionOfBaseDuration)
        }
        
        let paddedNotes = parsedNotes.enumerated().flatMap({(index, note) -> [Note] in
            if (padding == nil || index == parsedNotes.count - 1) { // Do not pad end of song
                return [note]
            }
            return [note, padding!]
        })
        
        return paddedNotes
    }
    
    static func == (lhs: Song, rhs: Song) -> Bool {
        return lhs.name == rhs.name
    }
}

struct Note {
    var frequency: Double
    var fractionOfBaseDuration: Int
}

/// Useful for batch handling of songs
typealias RawNote = (frequency: Double, fractionOfBaseDuration: Int)

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
