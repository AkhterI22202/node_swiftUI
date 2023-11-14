//
//  ProfileScreen.swift
//  IOMD
//
//  Created by Ideas2IT on 11/11/23.
//

import SwiftUI

struct ProfileScreen: View {
    @State private var selectedTab = 0
    @State private var tabbarVisible = true
    var body: some View {
        ZStack {
            Image("appBG")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack() {
                Image("appLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:70, height: 25)
                    .padding(.top, 20)
                //                ProfileTabView()
                //                    .padding(20)
                
                CustomTableViewContainer {
                    VStack {
                        VStack {
                            HStack {
                                //                            Spacer()
                                TopTabButton(systemImageName: "gear", tabTitle: "personal", tabIndex: 0, selectedTab: $selectedTab)
                                Spacer()
                                TopTabButton(systemImageName: "house.fill", tabTitle: "tokenized", tabIndex: 1, selectedTab: $selectedTab)
                                Spacer()
                                TopTabButton(systemImageName: "person.fill", tabTitle: "cards", tabIndex: 2, selectedTab: $selectedTab)
                                //                            Spacer()
                            }
                            .frame(height: 30)
                            .padding(.vertical, 11)
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color(red: 0.93, green: 0.93, blue: 0.93))
                                          

                                    .shadow(color: Color.black.opacity(0.7), radius: 10, x: 0, y: 0)
                            )
                            //                        .clipShape(RoundedRectangle(cornerRadius:30)) // Adjust the cornerRadius as needed
                        }
                        //                        .padding(.vertical, -8)
                        TabView(selection: $selectedTab) {
                            PersonalProfileView()
                                .tag(0)
                            TokenizedProfileView()
                                .tag(1)
                            CardsProfileView()
                                .tag(2)
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    }
                    
                }
                .padding(20)
            }
            
        }
    }
}


struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}

