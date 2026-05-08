import Foundation
import RealmSwift
class RealmManager: ObservableObject {
    private var realm: Realm?
    @Published var songs: [Song] = []
    init() { configureRealm(); fetchSongs() }
    func configureRealm() {
        let config = Realm.Configuration(schemaVersion: 1)
        Realm.Configuration.defaultConfiguration = config
        realm = try? Realm()
    }
    func fetchSongs() {
        guard let realm = realm else { return }
        songs = Array(realm.objects(Song.self).sorted(byKeyPath: "title"))
    }
    func addSong(title: String, artist: String, audioUrl: String, coverUrl: String) {
        let newSong = Song()
        newSong.title = title
        newSong.artist = artist
        newSong.audioUrl = audioUrl
        newSong.coverUrl = coverUrl
        try? realm?.write { realm?.add(newSong) }
        fetchSongs()
    }
}