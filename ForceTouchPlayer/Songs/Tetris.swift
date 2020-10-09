import Foundation

// https://www.flutetunes.com/tunes/tetris-theme-a-korobeiniki.pdf
let tetrisThemeA = Song(
    name: "Tetris Theme A",
    rawNotes: [main, main, end].flatMap { $0 }
)

private let main: [RawNote] = [
    (NOTE_E2, 4),
    (NOTE_B1, 8),
    (NOTE_C2, 8),
    (NOTE_D2, 4),
    (NOTE_C2, 8),
    (NOTE_B1, 8),

    (NOTE_A1, 4),
    (NOTE_A1, 8),
    (NOTE_C2, 8),
    (NOTE_E2, 4),
    (NOTE_D2, 8),
    (NOTE_C2, 8),

    (NOTE_B1, 3),
    (NOTE_C2, 8),
    (NOTE_D2, 4),
    (NOTE_E2, 4),

    (NOTE_C2, 4),
    (NOTE_A1, 4),
    (NOTE_A1, 8),
    (NOTE_A1, 8),
    (NOTE_B1, 8),
    (NOTE_C2, 8),
    
    (NOTE_D2, 3),
    (NOTE_F2, 8),
    (NOTE_A2, 4),
    (NOTE_F2, 8),
    (NOTE_E2, 8),

    (NOTE_E2, 3),
    (NOTE_C2, 8),
    (NOTE_E2, 4),
    (NOTE_D2, 8),
    (NOTE_C2, 8),

    (NOTE_B1, 4),
    (NOTE_B1, 8),
    (NOTE_C2, 8),
    (NOTE_D2, 4),
    (NOTE_F2, 4),

    (NOTE_C2, 4),
    (NOTE_A1, 4),
    (NOTE_A1, 4),
    (REST, 4),
]

private let end: [RawNote] = [
    (NOTE_E2, 2),
    (NOTE_C2, 2),

    (NOTE_D2, 2),
    (NOTE_B1, 2),
    
    (NOTE_C2, 2),
    (NOTE_A1, 2),

    (NOTE_AS1, 2),
    (NOTE_B1, 4),
    (REST, 4),

    (NOTE_E2, 2),
    (NOTE_C2, 2),

    (NOTE_D2, 2),
    (NOTE_B1, 2),

    (NOTE_C2, 4),
    (NOTE_E2, 4),
    (NOTE_A2, 2),

    (NOTE_GS2, 2),
    (REST, 2),
]
