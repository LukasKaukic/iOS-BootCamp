//
//  UberEatsMenu.swift
//  SwiftUIBootcamp
//
//  Created by Lukáš Kaukič on 05.12.2025.
//

import SwiftUI

struct UberEatsMenu: View {
    let menuItems: [MenuItem] = [
        .init(imageName: "Steak", type: "American", restaurantName: "American Pie" ),
        .init(imageName: "Burgers", type: "American", restaurantName: "Mama's Burger"),
        .init(imageName: "Toasts", type: "French", restaurantName: "French Bullldog" ),
        .init(imageName: "Pizza", type: "Italian", restaurantName: "Vosíme"),
        .init(imageName: "sushi", type: "Japanese", restaurantName: "Kdeboltubol")
        ]
    
    var body: some View {
        VStack {
            Text("Featured on Uber Eats")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 24) {
                    ForEach(menuItems) { item in
                        MenuITemView(menuItem: item)
                            
                    }
                }
            }
        }
    }
}

#Preview {
    UberEatsMenu()
}
