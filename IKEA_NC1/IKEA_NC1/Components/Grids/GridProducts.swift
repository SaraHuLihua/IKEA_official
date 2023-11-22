//
//  GridProducts.swift
//  IKEA_NC1
//
//  Created by sara hu lihua on 22/11/23.
//

import SwiftUI

struct GridProducts: View {
    
    var cards : [Card]
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    let screenSize = UIScreen.main.bounds
    
    var body: some View {
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        let imageWidth = screenWidth * 0.45
        let imageHeight = screenHeight * 0.25
        
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(cards) { element in
                    //NavigationLink(destination: )){
   
                    ForEach(0..<4){ index in
                        Image("product\(index + 1)")                             
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                            .frame(width: imageWidth, height: imageHeight)
                    }
                   // }
                }
            }
            .padding()
        }
    }
}

#Preview {
    GridProducts(cards: [Card(imageName: "", title: "", price: 0.0, description: "", objectName: "", size: "", color: "red"),Card(imageName: "", title: "", price: 0.0, description: "", objectName: "", size: "", color: "red")])
}

