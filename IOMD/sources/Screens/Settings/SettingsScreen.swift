//
//  SwiftUIView.swift
//  IOMD
//
//  Created by Ideas2IT on 11/11/23.
//

import SwiftUI

struct SettingsScreen: View {
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
                SettingsTableView()
                    .padding(20)
            }
            
        }
    }
        
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}

struct SettingsTableView: View {
    var items = ["Settings", "Saved Credentials", "Add Credentials", "Backup Restore", "Delete Account"]
    var body: some View {
        GeometryReader{ geo in
            VStack {
                CustomTopButton()
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(items, id: \.self) { item in
                        SettingsTableViewCell(data: item)
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                    }
                }

                Spacer()
            }
            .frame(width: geo.size.width ,height: geo.size.height - 10)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white)
                    .shadow(color: Color.gray.opacity(0.9), radius: 10, x: 0, y: 0)
            )

        }
    }
}

struct SettingsTableViewCell: View {
    var data: String = ""
    var body: some View {
        NavigationLink(destination: BackupRestoreScreen()) {
            Text("\(data)")
                .frame(maxWidth: .infinity)
                .padding(.vertical, 15)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 0)
                )
        }
        .buttonStyle(.plain)

        
    }
}

struct CustomTopButton: View {
    var title: String = "Settings"
    var body: some View {
        HStack {
//            Button {
//                print("ghj")
//                                    
//            } label: {
//                Image(systemName: "checkmark")
//                    .tint(.white)
//                    .fontWeight(.bold)
//            }
        
            Spacer()
            Text("\(title)")
                .font(.title2)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            Spacer()
//            Image(systemName: "checkmark")
//                .fontWeight(.bold)
//                .opacity(0)
        }
        .padding(.vertical, 15)
        .padding(.horizontal, 20)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color(red: 0.53, green: 0.47, blue: 0.95))
            )
    }
}

struct BackupRestoreScreen: View {
    var body: some View {
        NavigationView  {
            ZStack {
                Text("hello")
            }
            .ignoresSafeArea()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(Color(.cyan))
        }

    }
}




