import Foundation
import RealmSwift

class User: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var username: String
    @Persisted var email: String
    @Persisted var profilePicture: String?
    @Persisted var playlists: List<Playlist>
}

class Song: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var title: String
    @Persisted var artist: String
    @Persisted var album: String
    @Persisted var durationMs: Int
    @Persisted var audioUrl: String
    @Persisted var coverUrl: String
    @Persisted var genre: String
    @Persisted var releaseDate: Date = Date()
}

class Playlist: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String
    @Persisted var playlistDescription: String
    @Persisted var creatorId: ObjectId
    @Persisted var isPublic: Bool = true
    @Persisted var songs: List<Song>
    @Persisted var coverUrl: String
}
