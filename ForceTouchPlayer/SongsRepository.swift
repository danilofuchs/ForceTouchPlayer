import Foundation

struct SongsRepository {
    private var songs: [Song] = [
        twinkleTwinkleLittleStar,
        tetrisThemeA
    ]
    
    func listSongs() -> [Song] {
        return songs
    }
}
