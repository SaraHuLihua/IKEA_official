//
//  SegmentedControl.swift
//  IKEA_NC1
//
//  Created by sara hu lihua on 22/11/23.
//


import SwiftUI

struct SegmentedControl: View {
    @State private var selection: Bool = true
    var card : Card
    
    var body: some View {
        VStack {
            HStack{
                Text("Products ")
                    .foregroundStyle(selection ? .black : .gray)
                    .onTapGesture {
                        
                        withAnimation{
                            selection = true
                        }
                    }
                
                
                
                Text(" Rooms")
                    .foregroundStyle((selection ? .gray : .black))
                    .onTapGesture {
                        
                        withAnimation{
                            selection = false
                        }
                        
                    }
            }
            
            Rectangle().frame(width: 60, height: 3).offset(CGSize(width: selection ? -35 : 40, height: 0))
        }
        .offset(CGSize(width: -110.0, height: 10.0))
        .padding(.bottom,20)
        
        
        if selection == true {
            GridProducts(cards: [card])
        } else {
            GridRooms()
        }
    }
}

#Preview {
    SegmentedControl(card: Card(imageName: "sediaDiLegno", title: "sedia di legno", price: 49, description: "Perfect for watching old TV Shows.", objectName: "chair", size: "22 x 22 x 22", color: "red"))

}

