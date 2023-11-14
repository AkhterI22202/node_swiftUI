//
//  CustomTopTabbedView.swift
//  IOMD
//
//  Created by Ideas2IT on 12/11/23.
//

import SwiftUI

struct CustomTableViewContainer<Content: View>: View {
    let content: () -> Content

    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        GeometryReader{ geo in
            VStack {
                content()
            }            .frame(width: geo.size.width ,height: geo.size.height - 10)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .shadow(color: Color.gray.opacity(0.9), radius: 10, x: 0, y: 0)
                )
        }
    }
    
}

