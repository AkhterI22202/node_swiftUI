//
//  TopTabButton.swift
//  IOMD
//
//  Created by Ideas2IT on 13/11/23.
//

import SwiftUI

struct TopTabButton: View {
    var systemImageName: String
    var tabTitle: String
    var tabIndex: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        Button(action: {
            selectedTab = tabIndex
        }) {
            Text("\(tabTitle)")
                .foregroundColor(.black)
                .padding(.vertical)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(selectedTab == tabIndex ? Color.white.opacity(0.9) : .clear)
                .shadow(color: Color.black.opacity(0.6), radius: 4, x: 0, y: 0)
        )

    }
}
