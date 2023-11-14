//
//  SplashScreen.swift
//  IOMD
//
//  Created by Ideas2IT on 05/11/23.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("appBG")
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Image("appLogo")
                    Spacer()
                    NavigationLink(destination: MainTabScreen()) {
                        Image("splashBtn")
                            .rotationEffect(Angle(degrees: 90))
                            .padding(.bottom, 50)
                    }
                }
                .frame(height: UIScreen.main.bounds.height)
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
