//
//  GridRooms.swift
//  IKEA_NC1
//
//  Created by sara hu lihua on 22/11/23.
//

import SwiftUI

struct GridRooms: View {
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(0..<10) { index in
                    Button(action:{}, label: {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.gray)
                            .frame(width: 175, height: 270)
                            .overlay(
                                Text("(index + 1)")
                                    .foregroundColor(.white)
                            )
                        }
                    )
                }
            }
            .padding()
        }
    }
}

#Preview {
    GridRooms()
}
