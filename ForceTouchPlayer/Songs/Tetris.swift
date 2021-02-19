import Foundation

// https://www.flutetunes.com/tunes.php?id=192
// https://www.flutetunes.com/tunes/tetris-theme-a-korobeiniki.pdf
let tetrisThemeA = Song(
    name: "Tetris Theme A",
    rawNotes: [main, main, end].flatMap { $0 }
)

private let main: [RawNote] = [
    (NOTE_E2, 1),
    (NOTE_B1, 0.5),
    (NOTE_C2, 0.5),
    (NOTE_D2, 1),
    (NOTE_C2, 0.5),
    (NOTE_B1, 0.5),

    (NOTE_A1, 1),
    (NOTE_A1, 0.5),
    (NOTE_C2, 0.5),
    (NOTE_E2, 1),
    (NOTE_D2, 0.5),
    (NOTE_C2, 0.5),

    (NOTE_B1, 1.5),
    (NOTE_C2, 0.5),
    (NOTE_D2, 1),
    (NOTE_E2, 1),

    (NOTE_C2, 1),
    (NOTE_A1, 1),
    (NOTE_A1, 0.5),
    (NOTE_A1, 0.5),
    (NOTE_B1, 0.5),
    (NOTE_C2, 0.5),

    (NOTE_D2, 1.5),
    (NOTE_F2, 0.5),
    (NOTE_A2, 1),
    (NOTE_F2, 0.5),
    (NOTE_E2, 0.5),

    (NOTE_E2, 1.5),
    (NOTE_C2, 0.5),
    (NOTE_E2, 1),
    (NOTE_D2, 0.5),
    (NOTE_C2, 0.5),

    (NOTE_B1, 1),
    (NOTE_B1, 0.5),
    (NOTE_C2, 0.5),
    (NOTE_D2, 1),
    (NOTE_F2, 1),

    (NOTE_C2, 1),
    (NOTE_A1, 1),
    (NOTE_A1, 1),
    (REST, 1),
]

private let end: [RawNote] = [
    (NOTE_E2, 2),
    (NOTE_C2, 2),

    (NOTE_D2, 2),
    (NOTE_B1, 2),

    (NOTE_C2, 2),
    (NOTE_A1, 2),

    (NOTE_AS1, 2),
    (NOTE_B1, 1),
    (REST, 1),

    (NOTE_E2, 2),
    (NOTE_C2, 2),

    (NOTE_D2, 2),
    (NOTE_B1, 2),

    (NOTE_C2, 1),
    (NOTE_E2, 1),
    (NOTE_A2, 2),

    (NOTE_GS2, 2),
    (REST, 2),
]
