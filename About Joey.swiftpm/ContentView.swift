import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "person")
                }
            StoryView()
                .tabItem { 
                    Label("Story", systemImage: "book")
                }
            FavView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
            FactView()
                .tabItem {
                    
                    Label("Fun Facts", systemImage: "questionmark")
                }
            
        }
        .onAppear(){
            UITabBar.appearance().backgroundColor = .blue
        }
        .tint(.red)
        
        
    }
}
