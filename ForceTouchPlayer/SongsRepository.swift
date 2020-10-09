import Foundation

struct SongsRepository {
    private var songs: [Song] = [
        twinkleTwinkleLittleStar,
        tetrisThemeA,
        happyBirthday,
    ]
    
    func listSongs() -> [Song] {
        return songs
    }
}
