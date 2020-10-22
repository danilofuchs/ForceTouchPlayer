import Foundation

struct SongsRepository {
    private var songs: [Song] = [
        twinkleTwinkleLittleStar,
        tetrisThemeA,
        happyBirthday,
        imperialMarch,
        hedwigsTheme,
        cMajorScale,
    ]
    
    func listSongs() -> [Song] {
        return songs
    }
}
