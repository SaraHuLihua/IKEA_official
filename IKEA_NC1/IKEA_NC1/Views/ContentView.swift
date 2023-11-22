//
//  ContentView.swift
//  IKEA_NC1
//
//  Created by sara hu lihua on 22/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var card: Card
    
    var body: some View {

        NavigationStack{
            ScrollView{
                HStack(spacing: 20){
                    SearchBar()
                    ButtonScanner()
                }.padding()
                
                caroselloGrande()
                
                SegmentedControl(card: card)
            } .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {}, label: {
                        Image(systemName: "person")
                            .foregroundStyle(.black)
                            .bold()
                        }
                    )
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {}, label: {
                        Image(systemName: "bell")
                            .foregroundStyle(.black)
                            .bold()
                        }
                    )
                }
            }
            
            
        }
        
    }
}



struct TabBar: View {
    
    
    
    var card: Card
    
    var body: some View {
        TabView{
            Text("Home")
                .tabItem {
                    Image(systemName: "house")
                    
                }
            
            ContentView(card: card)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    
                }
            
            Text("Negozio")
                .tabItem {
                    Image(systemName: "house")
                    
                }
            
            Text("Preferiti")
                .tabItem {
                    Image(systemName: "heart")
                    
                }
            
            Text("Cart")
                .tabItem {
                    Image(systemName: "cart")
                    
                }
        }.accentColor(.black)
        .background(Color.white) // Imposta lo sfondo bianco
    }
}


#Preview {
    TabBar(card: Card(imageName: "sediaDiLegno", title: "sedia di legno", price: 49, description: "Perfect for watching old TV Shows.", objectName: "chair", size: "22 x 22 x 22", color: "red"))
}
