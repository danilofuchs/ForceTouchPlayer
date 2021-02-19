//
//  Doom.swift
//  ForceTouchPlayer
//
//  Created by Henry Asbridge on 12/02/2021.
//

// Transcribed from the arduinosongs repo
import Foundation

let doomE1M1 = Song(
    name: "Doom E1M1",
    defaultTempo: 300.0,
    padding: Note(frequency: 0, value: 0.15),
    rawNotes: [part1, part2, part3].flatMap { $0 }
)
    // Had to break this into pieces, the compiler™ went brrr™
private let part1: [RawNote] = [
(NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 3),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 3),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 3),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_FS2, 0.375), (NOTE_D2, 0.375), (NOTE_B1, 0.375), (NOTE_A2, 0.375), (NOTE_FS2, 0.375), (NOTE_B1, 0.375), (NOTE_D2, 0.375), (NOTE_FS2, 0.375), (NOTE_A2, 0.375), (NOTE_FS2, 0.375), (NOTE_D2, 0.375), (NOTE_B1, 0.375)]

private let part2: [RawNote] = [

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 3),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_B2, 0.375), (NOTE_G2, 0.375), (NOTE_E2, 0.375), (NOTE_G2, 0.375), (NOTE_B2, 0.375), (NOTE_E3, 0.375), (NOTE_G2, 0.375), (NOTE_B2, 0.375), (NOTE_E3, 0.375), (NOTE_B2, 0.375), (NOTE_G3, 0.375), (NOTE_B3, 0.375),

  (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_A2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_G2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5),
  (NOTE_F2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_DS2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_E2, 0.5), (NOTE_F2, 0.5),
  (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_A2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_G2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5),
  (NOTE_F2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_DS2, 3),

  (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_A2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_G2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), //29
  (NOTE_F2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_DS2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_E2, 0.5), (NOTE_F2, 0.5),
  (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_A2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_G2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5),
  (NOTE_A2, 0.375), (NOTE_F2, 0.375), (NOTE_D2, 0.375), (NOTE_A2, 0.375), (NOTE_F2, 0.375), (NOTE_D2, 0.375), (NOTE_C3, 0.375), (NOTE_A2, 0.375), (NOTE_F2, 0.375), (NOTE_A2, 0.375), (NOTE_F2, 0.375), (NOTE_D2, 0.375),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), //33
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 3),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), //37
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 3),
]

private let part3: [RawNote] = [
  (NOTE_CS2, 0.5), (NOTE_CS2, 0.5), (NOTE_CS3, 0.5), (NOTE_CS2, 0.5), (NOTE_CS2, 0.5), (NOTE_B2, 0.5), (NOTE_CS2, 0.5), (NOTE_CS2, 0.5), //41
  (NOTE_A2, 0.5), (NOTE_CS2, 0.5), (NOTE_CS2, 0.5), (NOTE_G2, 0.5), (NOTE_CS2, 0.5), (NOTE_CS2, 0.5), (NOTE_GS3, 0.5), (NOTE_A2, 0.5),
  (NOTE_B1, 0.5), (NOTE_B1, 0.5), (NOTE_B2, 0.5), (NOTE_B1, 0.5), (NOTE_B1, 0.5), (NOTE_A2, 0.5), (NOTE_B1, 0.5), (NOTE_B1, 0.5),
  (NOTE_G2, 0.5), (NOTE_B1, 0.5), (NOTE_B1, 0.5), (NOTE_F2, 3),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), //45
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_B2, 0.375), (NOTE_G2, 0.375), (NOTE_E2, 0.375), (NOTE_G2, 0.375), (NOTE_B2, 0.375), (NOTE_E3, 0.375), (NOTE_G2, 0.375), (NOTE_B2, 0.375), (NOTE_E3, 0.375), (NOTE_B2, 0.375), (NOTE_G3, 0.375), (NOTE_B3, 0.375),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), //49
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 3),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), //53
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_FS2, 0.375), (NOTE_DS2, 0.375), (NOTE_B1, 0.375), (NOTE_FS2, 0.375), (NOTE_DS2, 0.375), (NOTE_B1, 0.375), (NOTE_G2, 0.375), (NOTE_D2, 0.375), (NOTE_B1, 0.375), (NOTE_DS3, 0.375), (NOTE_DS2, 0.375), (NOTE_B1, 0.375),

// -/-

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), //57
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 3),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), //61
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_E3, 0.375), (NOTE_B2, 0.375), (NOTE_G2, 0.375), (NOTE_G3, 0.375), (NOTE_E3, 0.375), (NOTE_G2, 0.375), (NOTE_B2, 0.375), (NOTE_D3, 0.375), (NOTE_E3, 0.375), (NOTE_G3, 0.375), (NOTE_E3, 0.375), (NOTE_G2, 0.375),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), //65
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 3),

  (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_A2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_G2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), //69
  (NOTE_F2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_DS2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_E2, 0.5), (NOTE_F2, 0.5),
  (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_A2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5), (NOTE_G2, 0.5), (NOTE_A1, 0.5), (NOTE_A1, 0.5),
  (NOTE_A2, 0.375), (NOTE_F2, 0.375), (NOTE_D2, 0.375), (NOTE_A2, 0.375), (NOTE_F2, 0.375), (NOTE_D2, 0.375), (NOTE_C3, 0.375), (NOTE_A2, 0.375), (NOTE_F2, 0.375), (NOTE_A2, 0.375), (NOTE_F2, 0.375), (NOTE_D2, 0.375),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), //73
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 3),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), //77
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 3),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), //81
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 3),

  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), //73
  (NOTE_C2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_AS1, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_B1, 0.5), (NOTE_C2, 0.5),
  (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_E2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5), (NOTE_D2, 0.5), (NOTE_E1, 0.5), (NOTE_E1, 0.5),
  (NOTE_B2, 0.375), (NOTE_G2, 0.375), (NOTE_E2, 0.375), (NOTE_B1, 0.375), (NOTE_E2, 0.375), (NOTE_G2, 0.375), (NOTE_C3, 0.375), (NOTE_B2, 0.375), (NOTE_G2, 0.375), (NOTE_B2, 0.375), (NOTE_G2, 0.375), (NOTE_E2, 0.375),
]
