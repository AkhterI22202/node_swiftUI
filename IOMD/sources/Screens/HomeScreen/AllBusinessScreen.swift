//
//  AllBusinessScreen.swift
//  IOMD
//
//  Created by Ideas2IT on 13/11/23.
//

import SwiftUI

struct AllBusinessScreen: View {
    let fruitList = ["Apple", "Banana", "Orange", "Grapes"]
    @State var searchText = ""
    var body: some View {
        List(fruitList, id: \.self) { fruit in
            BusinessListCell(cellData: fruit)
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets())
                .listRowBackground(Color.clear)
                .padding(5)
        }
        .padding(.bottom)
        .padding(.horizontal)
        .listStyle(.inset)
        .listRowSeparatorTint(.red)

        

    }
}

struct AllBusinessScreen_Previews: PreviewProvider {
    static var previews: some View {
        AllBusinessScreen()
    }
}


struct BusinessListCell: View {
    var cellData: String
    var body: some View {
        NavigationLink(destination: Text("")) {
            HStack {
                Text("N")
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .background(.cyan)
                    .cornerRadius(35)
                Text("\(cellData)")
                    .padding(.vertical ,10)
                    .fontWeight(.light)
                    .font(.subheadline)
                Spacer()
                Text("12")
                    .font(.subheadline)
                    .fontWeight(.light)
                    
                
            }
            .buttonStyle(.plain)
            .padding(.trailing, 30)
//            .padding(.vertical, 7)
        }
        .padding(.horizontal, 10)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 0)
        )
        
    }
}


