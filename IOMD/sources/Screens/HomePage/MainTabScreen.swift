import SwiftUI

struct MainTabScreen: View {
    @State private var selectedTab = 1
    @State private var tabbarVisible = true
//    @State private var tabBarOffset: CGFloat = 0
    var body: some View {
        NavigationView {
            ZStack {
            

                // Your main content goes here
                TabView(selection: $selectedTab) {
                    SettingsScreen()
                        .tag(0)
                    HomeScreen()
                        .tag(1)
                    ProfileScreen()
                        .tag(2)
                }
                
                
                // Custom TabBar
                VStack {
                    Spacer()
                    HStack {
                        TabBarButton(systemImageName: "gear", tabTitle: "gear", tabIndex: 0, selectedTab: $selectedTab)
                        TabBarButton(systemImageName: "house.fill", tabTitle: "Home", tabIndex: 1, selectedTab: $selectedTab)
                        TabBarButton(systemImageName: "person.fill", tabTitle: "Profile", tabIndex: 2, selectedTab: $selectedTab)
                    }
                    .frame(height: 30)
                    .padding()
                    .background(Color.white.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius:30)) // Adjust the cornerRadius as needed
                }
                
            }
        }
        .toolbar(.hidden)
    }
}

struct TabBarButton: View {
    var systemImageName: String
    var tabTitle: String
    var tabIndex: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        Button(action: {
            selectedTab = tabIndex
        }) {
            VStack {
                Image(systemName: systemImageName)
                    .imageScale(.large)//                Text(tabTitle)
//                    .font(.caption)
            }
            .foregroundColor(selectedTab == tabIndex ? .green : .black)
        }
        .padding()
    }
}

//struct IITabBar: View {
//    var body: some View {
//        HStack {
//            TabBarButton(systemImageName: "gear", tabTitle: "gear", tabIndex: 0, selectedTab: $selectedTab)
//            TabBarButton(systemImageName: "house.fill", tabTitle: "Home", tabIndex: 1, selectedTab: $selectedTab)
//            TabBarButton(systemImageName: "person.fill", tabTitle: "Profile", tabIndex: 2, selectedTab: $selectedTab)
//        }
//        .frame(height: 30)
//        .padding()
//        .background(Color.white.opacity(0.3))
//        .clipShape(RoundedRectangle(cornerRadius:30)) // Adjust the cornerRadius as needed
//    }
//}

