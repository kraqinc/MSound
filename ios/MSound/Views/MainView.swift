import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            LibraryView()
                .tabItem {
                    Label("Library", systemImage: "music.note.list")
                }
        }
        .accentColor(.green) // Spotify vibe
        .preferredColorScheme(.dark)
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Good evening")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal)
                    
                    // Recently Played Grid
                    // Featured Playlists
                    // Recommended for you
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}
