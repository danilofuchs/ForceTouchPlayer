import Foundation

struct SongsRepository {
    private var songs: [Song] = [
        twinkleTwinkleLittleStar,
        tetrisThemeA,
        happyBirthday,
        imperialMarch,
    ]
    
    func listSongs() -> [Song] {
        return songs
    }
}
