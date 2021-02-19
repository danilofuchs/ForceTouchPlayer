import Foundation

// https://www.flutetunes.com/tunes.php?id=130
// https://www.flutetunes.com/tunes/happy-birthday-to-you.pdf
let happyBirthday = Song(
    name: "Happy Birthday to You",
    defaultTempo: 100.0,
    rawNotes: [
        (NOTE_D1, 0.75),
        (NOTE_D1, 0.25),

        (NOTE_E1, 1),
        (NOTE_D1, 1),
        (NOTE_G1, 1),

        (NOTE_F1, 2),
        (NOTE_D1, 0.75),
        (NOTE_D1, 0.25),

        (NOTE_E1, 1),
        (NOTE_D1, 1),
        (NOTE_C2, 1),

        (NOTE_G1, 2),
        (NOTE_D1, 0.75),
        (NOTE_D1, 0.25),

        (NOTE_D2, 1),
        (NOTE_B1, 1),
        (NOTE_G1, 1),

        (NOTE_F1, 1),
        (NOTE_E1, 1),
        (NOTE_C2, 0.75),
        (NOTE_C2, 0.25),

        (NOTE_B1, 1),
        (NOTE_G1, 1),
        (NOTE_A1, 1),

        (NOTE_G1, 2),
    ]
)
