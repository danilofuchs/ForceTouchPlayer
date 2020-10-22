import Foundation

struct SongsRepository {
    private var songs: [Song] = [
        twinkleTwinkleLittleStar,
        tetrisThemeA,
        happyBirthday,
        imperialMarch,
        hedwigsTheme
    ]
    
    func listSongs() -> [Song] {
        return songs
    }
}
