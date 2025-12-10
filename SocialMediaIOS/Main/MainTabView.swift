import SwiftUI

struct MainTabView: View {
    @StateObject var auth = AuthViewModel()
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            CreateView()
                .tabItem {
                    Image(systemName: "plus.square")
                    Text("Create")
                }

            MessagesListView()
                .tabItem {
                    Image(systemName: "paperplane")
                    Text("Messages")
                }

            ProfileView()
                .environmentObject(auth)
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
        }
    }
}
