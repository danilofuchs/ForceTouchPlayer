import Foundation

struct SongsRepository {
    private var songs: [Song] = [
        twinkleTwinkleLittleStar,
        tetrisThemeA,
        happyBirthday,
        imperialMarch,
        hedwigsTheme,
        cMajorScale,
        cantinaBand,
        doomE1M1,
        greensleeves,
    ]

    func listSongs() -> [Song] {
        return songs
    }
}
