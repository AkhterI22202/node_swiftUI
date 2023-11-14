//
//  HomeScreen1.swift
//  IOMD
//
//  Created by Ideas2IT on 11/11/23.
//

import SwiftUI

struct HomeScreen: View {
    @State var selectedTab = 0
    var body: some View {
        //        GeometryReader{ geo in {
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
                CustomTableViewContainer {
                    VStack {
                        VStack {
                            HStack {
                                //                            Spacer()
                                TopTabButton(systemImageName: "gear", tabTitle: "Business", tabIndex: 0, selectedTab: $selectedTab)
                                Spacer()
                                TopTabButton(systemImageName: "house.fill", tabTitle: "Interactions", tabIndex: 1, selectedTab: $selectedTab)
                                Spacer()
                                TopTabButton(systemImageName: "person.fill", tabTitle: "Messages", tabIndex: 2, selectedTab: $selectedTab)
                                //                            Spacer()
                            }
                            .frame(height: 30)
                            .padding(.vertical, 11)
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.gray.opacity(0.15))
                                    .shadow(color: Color.black.opacity(0.7), radius: 5, x: 0, y: 0)
                            )
                        }
//                        .padding(.vertical, -8)
                        TabView(selection: $selectedTab) {

                            AllBusinessScreen()
                                .tag(0)
                            AllTranscationsScreen()
                                .tag(1)
                            MessagesScreen()
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

struct HomeScreen1_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
